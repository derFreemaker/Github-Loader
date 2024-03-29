﻿using Lua_Bundler.Interfaces;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;

namespace Lua_Bundler.Package
{
    internal partial class PackageModule : IPackageModule
    {
        public string Id { get; }
        public string Location { get; }
        public string Namespace { get; private set; }
        public bool IsRunnable { get; private set; }


        public string LocationPath { get; }
        public IPackage Parent { get; }

        public List<string> RequiringModules { get; } = new();

        public PackageModule(string directoryLocation, FileInfo info, IPackage parent)
        {
            var fileStem = Path.GetFileNameWithoutExtension(info.Name);
            Location = $"{directoryLocation.Replace("\\", "/")}/{fileStem}";
            Namespace = $"{directoryLocation.Replace("\\", ".")}.{fileStem}";
            IsRunnable = info.Extension == ".lua";

            LocationPath = info.FullName;
            Parent = parent;

            Id = Namespace;
        }

        #region - Analyse -

        [GeneratedRegex("---@namespace ([a-zA-Z0-9._]*)")]
        private static partial Regex GetRegexNamespace();
        private void SearchNamespace(string content, PackageMap map)
        {
            var namespaceRegex = GetRegexNamespace();
            MatchCollection namespaceMatches = namespaceRegex.Matches(content);

            foreach (var match in namespaceMatches.Cast<Match>())
            {
                var group = match.Groups[1];
                var @namespace = group.Value;

                // change Namespace and refresh map
                map.RemoveModule(Namespace);
                Namespace = @namespace;
                if (!map.TryAddModule(this))
                    ErrorWriter.ModuleExistsMoreThanOnce(this);
            }
        }

        [GeneratedRegex("---@isRunnable (true|false)")]
        private static partial Regex GetRegexIsRunnable();
        private void SearchIsRunnable(string content)
        {
            var isRunnableRegex = GetRegexIsRunnable();
            MatchCollection isRunnableMatches = isRunnableRegex.Matches(content);

            foreach (var match in isRunnableMatches.Cast<Match>())
            {
                var group = match.Groups[1];
                var boolStr = group.Value;

                IsRunnable = bool.Parse(boolStr);
            }
        }

        private void AnalyseContent(string content, PackageMap map)
        {
            SearchNamespace(content, map);
            SearchIsRunnable(content);
        }

        #endregion

        public void Map(PackageMap map)
        {
            if (!map.TryAddModule(this))
                ErrorWriter.ModuleExistsMoreThanOnce(this);

            var content = File.ReadAllText(LocationPath);
            AnalyseContent(content, map);
        }

        #region - Check -

        [GeneratedRegex("require(?>\\(| )(?>\\\"|\\')([^\\\"]+?)(?>\\\"|\\')(?>\\)| )")]
        private static partial Regex GetRegexRequireFunction();
        private void CheckRequireFunctions(string content, PackageMap map)
        {
            var requireRegex = GetRegexRequireFunction();
            MatchCollection requireMatches = requireRegex.Matches(content);

            var requireMatches2 = requireMatches.Cast<Match>();

            foreach (var match in requireMatches2)
            {
                var group = match.Groups[1];
                var moduleNamespace = group.Value;

                if (!map.TryGetModule(moduleNamespace, out var module))
                {
                    ErrorWriter.ModuleNotFound(moduleNamespace, (LocationPath, Utils.GetLine(content, group)));
                    continue;
                }

                if (module.RequiringModules.Contains(Namespace))
                    ErrorWriter.ModuleCircularReference(this, module);

                if (module.Parent.Location == Parent.Location)
                    continue;

                if (!Parent.RequiredPackages.Contains(module.Parent.Location))
                    Parent.RequiredPackages.Add(module.Parent.Location);

                RequiringModules.Add(moduleNamespace);
            }
        }

        [GeneratedRegex("Utils\\.Class\\.CreateClass\\(.+, \"(.+)\".*?\\)")]
        private static partial Regex GetRegexCreateClass();
        private void CheckCreateClass(string content, PackageMap map)
        {
            var createClassRegex = GetRegexCreateClass();
            MatchCollection createClassMatches = createClassRegex.Matches(content);

            foreach (var match in createClassMatches.Cast<Match>())
            {
                var classGroup = match.Groups[1];
                var className = classGroup.Value;

                var lineInfo = Utils.GetLine(content, classGroup);
                if (!map.TryAddClass(className, (LocationPath, lineInfo)))
                {
                    ErrorWriter.ClassExistsMoreThanOnce(className, (LocationPath, lineInfo), map.GetClassFileLineInfo(className)!);
                    continue;
                }
            }
        }

        [GeneratedRegex("---@using ([a-zA-Z0-9._]*)")]
        private static partial Regex GetRegexUsing();
        private void CheckUsing(string content, PackageMap map)
        {
            var usingRegex = GetRegexUsing();
            MatchCollection usingMatches = usingRegex.Matches(content);

            foreach (var match in usingMatches.Cast<Match>())
            {
                var group = match.Groups[1];
                var packageNamespace = group.Value;

                if (!map.TryGetPackage(packageNamespace, out var package))
                {
                    ErrorWriter.PackageUsingNotFound(packageNamespace, (LocationPath, Utils.GetLine(content, group)));
                    continue;
                }

                if (!Parent.RequiredPackages.Contains(package.Location))
                    Parent.RequiredPackages.Add(package.Location);
            }
        }

        internal void CheckContent(string content, PackageMap map)
        {
            if (IsRunnable)
            {
                CheckRequireFunctions(content, map);
                CheckCreateClass(content, map);
            }

            CheckUsing(content, map);
        }
        #endregion

        public void Check(PackageMap map)
        {
            var content = File.ReadAllText(LocationPath);
            CheckContent(content, map);
        }

        #region - Modify -
        private static void ConvertLines(Span<string> lines)
        {
            for (int i = 0; i < lines.Length; i++)
            {
                string line = lines[i];
                lines[i] = line.Replace("[[", "{{{").Replace("]]", "}}}");
            }
        }
        private static void RemoveComments(Span<string> lines)
        {
            for (int i = 0; i < lines.Length; i++)
            {
                string line = lines[i];
                int foundComment = line.IndexOf("--");
                if (foundComment == -1)
                    continue;

                lines[i] = line[..foundComment];
            }
        }
        private static void RemoveIndents(Span<string> lines)
        {
            for (int i = 0; i < lines.Length; i++)
            {
                string line = lines[i];
                lines[i] = line.Replace("  ", "");
            }
        }
        private static Span<string> RemoveEmptyLines(Span<string> lines)
        {
            List<string> newLines = new();
            foreach (string line in lines)
            {
                if (line.Length == 0)
                    continue;
                newLines.Add(line.TrimEnd());
            }
            return CollectionsMarshal.AsSpan(newLines);
        }

        private static Span<string> ModifyContent(Span<string> content, BundleOptions options, IPackageModule module)
        {
            if (module.IsRunnable)
            {
                ConvertLines(content);
            }

            if (options.RemoveComments)
            {
                RemoveComments(content);
            }

            if (options.RemoveIndents)
            {
                RemoveIndents(content);
            }

            if (options.RemoveEmptyLines)
            {
                content = RemoveEmptyLines(content);
            }

            return content;
        }
        #endregion

        public string BundleInfo(BundleOptions options)
        {
            var builder = new StringBuilder();

            builder.AppendLine($"        [\"{Id}\"] = {{");
            builder.AppendLine($"            Location = \"{Location}\",");
            builder.AppendLine($"            Namespace = \"{Namespace}\",");
            builder.AppendLine($"            IsRunnable = {IsRunnable.ToString().ToLower()},");
            builder.AppendLine($"        }},");

            return builder.ToString().ReplaceLineEndings("\n");
        }

        public string BundleData(BundleOptions options)
        {
            var content = File.ReadAllLines(LocationPath).AsSpan();
            content = ModifyContent(content, options, this);
            var builder = new StringBuilder();

            foreach (var line in content)
            {
                if (line is null)
                    continue;

                builder.AppendLine(line);
            }

            return builder.ToString();
        }
    }
}
