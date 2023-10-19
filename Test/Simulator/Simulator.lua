local FileSystem = require('Tools.FileSystem')

local CurrentPath = ''

---@class Test.Simulator
---@field private _LoadedLoaderFiles Dictionary<string, any[]>
local Simulator = {}

---@private
function Simulator:LoadLoaderFiles()
	self._LoadedLoaderFiles = require("Test.Simulator.LoadFiles")(CurrentPath)
end

local requireFunc = require
---@private
function Simulator:OverrideRequire()
	---@param moduleToGet string
	function require(moduleToGet)
		if requireFunc == nil then
			error('require Func was nil')
		end
		return requireFunc('src.' .. moduleToGet)
	end
end

---@private
function Simulator:loadComputer()
	computer = {}

	---@diagnostic disable-next-line
	function computer.millis()
		return math.floor(os.clock())
	end

	computer.time = os.time
end

---@private
function Simulator:Prepare()
	component = {}
	event = {}
	filesystem = {}
	self:loadComputer()

	self:LoadLoaderFiles()
	self:OverrideRequire()

	Utils = self._LoadedLoaderFiles['/Github-Loading/Loader/Utils'][1] --[[@as Utils]]
end

---@return Test.Simulator
function Simulator:Initialize()
	local simulatorPath = FileSystem.GetCurrentDirectory()
	CurrentPath = simulatorPath:gsub("/Test/Simulator", "")

	self:Prepare()

	return self
end

return Simulator:Initialize()
