local Data={
["PowerPlant.Coal.__main"] = [[
local ValveAdapter = require('Adapter.Pipeline.Valve')

---@class PowerPlant.Coal.Main : Github_Loading.Entities.Main
---@field private m_hotSteamValves Adapter.Pipeline.Valve[]
local Main = {}

function Main:Configure()
	self.m_hotSteamValves = ValveAdapter.Static__GetAllValvesInNetwork()
end

function Main:Run()
	for _, valve in pairs(self.m_hotSteamValves) do
		log(valve:GetId(), valve:GetFlowLimit())
	end
end

return Main

]],
}

return Data
