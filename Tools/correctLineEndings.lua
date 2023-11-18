local args = { ... }

local FileSystem = require(args[3])

local targetDirectory = args[1]

local excludedFolders = {
    ".git",
    ".stfolder",
    ".vscode",
    "API Documentations",
    "Code\\-Server",
    "Packages",
    "Obsidian Vault",
    "Tools",
    "FIN Source Code"
}

---@param path string
local function checkFolder(path)
    local location = path:gsub(targetDirectory .. "/", "")
    for _, excludedFolder in pairs(excludedFolders) do
        if location:find(excludedFolder) then
            print("skipping: " .. path)
            return
        end
    end

    for _, value in pairs(FileSystem.GetDirectories(path)) do
        checkFolder(path .. "/" .. value)
    end

    local command = args[2] .. " \"" .. path .. "/*.lua\""
    os.execute(command)
end

checkFolder(targetDirectory)

print("Line endings conversion complete.")