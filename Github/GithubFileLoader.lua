---
--- Created by Freemaker
--- LastChange: 16/01/2023
---

print("\nINFO! Github File Loader Version: 1.0.1\n")

local FileLoader = {}
FileLoader.__index = FileLoader

function FileLoader.new()
    local instace = setmetatable({}, FileLoader)
	return instace
end

FileLoader.debug = false
FileLoader.requests = {}
FileLoader.basePath = ""

function FileLoader:requestFile(url, path)
	if self.debug then
		print("DEBUG! Requests file '" .. path .. "' from '" .. url .. "'")
	end
	local request = InternetCard:request(url, "GET", "")
	table.insert(self.requests, {
		request = request,
		func = function(req)
			if self.debug then
				print("DEBUG! Write file '" .. path .. "'")
			end
			local file = filesystem.open(path, "w")
			local code, data = req:get()
			if code ~= 200 or not data then
				print("ERROR! Unable to request file '" .. path .. "' from '" .. url .. "'")
				return false
			end
			file:write(data)
			file:close()
			return true
		end
	})
end

function FileLoader:doEntry(parentPath, entry, force)
	if #entry == 1 then
		self:doFile(parentPath, entry, force)
	else
		self:doFolder(parentPath, entry, force)
	end
end

function FileLoader:doFile(parentPath, file, force)
	local path = filesystem.path(parentPath, file[1])
	if not filesystem.exists(path) or force then
		self:requestFile(self.basePath .. path, path)
	end
end

function FileLoader:doFolder(parentPath, folder, force)
	local path = filesystem.path(parentPath, folder[1])
	table.remove(folder, 1)
	filesystem.createDir(path)
	for _, child in pairs(folder) do
		self:doEntry(path, child, force)
	end
end

function FileLoader:loadFiles()
	if self.debug then
		if #self.requests > 0 then
			print("DEBUG! downloading program files...")
		end
	end
	local downloadedFiles = false
    while #self.requests > 0 do
        local i = 1
        while i <= #self.requests do
            local request = self.requests[i]
            if request.request:canGet() then
                table.remove(self.requests, i)
                local done = request.func(request.request)
                if not done then
                    computer.beep(0.2)
                    return false
                end
				downloadedFiles = true
            end
            i = i + 1
        end
    end
	if downloadedFiles then
		print("INFO! downloaded program files")
	end
	return true
end

function FileLoader:requestFileTree(tree, force)
    self:doFolder("", tree, force)
end

function FileLoader:DownloadFileTree(basePath, tree, force, debug)
	if basePath == nil then return false end
	if tree == nil then return false end
	if force == nil then force = false end
	if debug == false or debug == true then self.debug = debug end

	self.basePath = basePath
	self:requestFileTree(tree, force)
	return self:loadFiles()
end

return FileLoader