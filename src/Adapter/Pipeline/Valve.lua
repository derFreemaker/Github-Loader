---@class Adapter.Pipeline.Valve : object
---@field private valve FicsIt_Networks.Components.Factory.Build_Valve_C
---@overload fun(id: FicsIt_Networks.UUID, valve: FicsIt_Networks.Components.Factory.Build_Valve_C?)
local Valve = {}

---@param groupName string?
---@return Adapter.Pipeline.Valve[]
function Valve.Static__FindAllValvesInNetwork(groupName)
	local valveIds = {}
	if groupName == nil then
		valveIds = component.findComponent(findClass('Build_Valve_C'))
	else
		valveIds = component.findComponent(groupName)
	end
	local valveAdapters = {}
	for _, valveId in ipairs(valveIds) do
		table.insert(valveAdapters, Valve(valveId))
	end
	return valveAdapters
end

---@private
---@param idOrValve FicsIt_Networks.UUID | FicsIt_Networks.Components.Factory.Build_Valve_C
function Valve:__init(idOrValve)
	if type(idOrValve) == 'string' then
		self.valve = component.proxy(idOrValve) --[[@as FicsIt_Networks.Components.Factory.Build_Valve_C]]
		return
	end
	---@cast idOrValve FicsIt_Networks.Components.Factory.Build_Valve_C
	self.valve = idOrValve
end

---@return FicsIt_Networks.UUID
function Valve:GetId()
	return self.valve.id
end

--- Closes the valve so nothing goes through it anymore.
function Valve:Close()
	self.valve.userFlowLimit = 0
end

--- Opens the value so it can go as much through as the pipe allows.
function Valve:Open()
	self.valve.userFlowLimit = -1
end

---@param amountPct number
function Valve:SetFlowLimitPercentage(amountPct)
	self.valve.userFlowLimit = amountPct / 10
end

---@param amount number 0 = nothing; 10 = max
function Valve:SetFlowLimit(amount)
	self.valve.userFlowLimit = amount
end

---@return number flowLimit
function Valve:GetFlowLimitPercentage()
	return self.valve.userFlowLimit * 10
end

---@return number flowLimit
function Valve:GetFlowLimit()
	return self.valve.userFlowLimit
end

return Utils.Class.CreateClass(Valve, 'Adapter.Pipeline.Valve')