---@class Adapter.Pipeline.Valve : object
---@field private _IPAddress Net.Core.IPAddress
---@field private _Valve Satisfactory.Components.Factory.Build_Valve_C
---@overload fun(id: FIN.UUID, valve: Satisfactory.Components.Factory.Build_Valve_C?)
local Valve = {}

---@param nickName string?
---@return FIN.UUID[]
function Valve.Static__FindAllValvesInNetwork(nickName)
	local valveIds = {}
	if nickName == nil then
		valveIds = component.findComponent(findClass('Build_Valve_C'))
	else
		valveIds = component.findComponent(nickName)
	end
	return valveIds
end

---@param nickName string?
---@return Adapter.Pipeline.Valve[]
function Valve.Static__FindAllValvesInNetworkAndAddAdapter(nickName)
	local valveIds = Valve.Static__FindAllValvesInNetwork(nickName)
	local valveAdapters = {}
	for _, valveId in ipairs(valveIds) do
		table.insert(valveAdapters, Valve(valveId))
	end
	return valveAdapters
end

---@private
---@param idOrValve FIN.UUID | Satisfactory.Components.Factory.Build_Valve_C
function Valve:__init(idOrValve)
	if type(idOrValve) == 'string' then
		self._Valve = component.proxy(idOrValve) --[[@as Satisfactory.Components.Factory.Build_Valve_C]]
		return
	end
	---@cast idOrValve Satisfactory.Components.Factory.Build_Valve_C
	self._Valve = idOrValve
end

---@return FIN.UUID
function Valve:GetId()
	return self._Valve.id
end

---@return string
function Valve:GetNick()
	return self._Valve.nick
end

--- Closes the valve so nothing goes through it anymore.
function Valve:Close()
	self._Valve.userFlowLimit = 0
end

--- Opens the value so it can go as much through as the pipe allows.
function Valve:Open()
	self._Valve.userFlowLimit = -1
end

---@param amountPct number
function Valve:SetFlowLimitPercentage(amountPct)
	self._Valve.userFlowLimit = amountPct / 10
end

---@param amount number 0 = nothing; 10 = max
function Valve:SetFlowLimit(amount)
	self._Valve.userFlowLimit = amount
end

---@return number flowLimit
function Valve:GetFlowLimitPercentage()
	return self._Valve.userFlowLimit * 10
end

---@return number flowLimit
function Valve:GetFlowLimit()
	return self._Valve.userFlowLimit
end

return Utils.Class.CreateClass(Valve, 'Adapter.Pipeline.Valve')
