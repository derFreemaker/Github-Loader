local PortUsage = require('Core.PortUsage')

local DNSEndpoints = require('DNS.Server.Endpoints')
local NetworkClient = require('Net.Core.NetworkClient')
local Task = require('Core.Task')
local RestApiController = require('Net.Rest.Api.Server.Controller')

---@class DNS.Main : Github_Loading.Entities.Main
---@field private eventPullAdapter Core.EventPullAdapter
---@field private apiController Net.Rest.Api.Server.Controller
---@field private netPort Net.Core.NetworkPort
---@field private netClient Net.Core.NetworkClient
---@field private endpoints DNS.Endpoints
local Main = {}

---@param context Net.Core.NetworkContext
function Main:GetDNSServerAddress(context)
	local netClient = self.netPort:GetNetClient()
	local id = netClient:GetId()
	self.Logger:LogDebug(context.SenderIPAddress .. ' requested DNS Server IP Address')
	netClient:Send(context.SenderIPAddress, PortUsage.DNS, 'ReturnDNSServerAddress', id)
end

function Main:Configure()
	self.eventPullAdapter = require('Core.Event.EventPullAdapter'):Initialize(self.Logger:subLogger('EventPullAdapter'))

	local dnsLogger = self.Logger:subLogger('DNSServerAddress')
	self.netClient = NetworkClient(dnsLogger:subLogger('NetworkClient'))
	self.netPort = self.netClient:CreateNetworkPort(PortUsage.DNS)
	self.netPort:AddListener('GetDNSServerAddress', Task(self.GetDNSServerAddress, self))
	self.netPort:OpenPort()
	self.Logger:LogDebug('setup Get DNS Server IP Address')

	self.Logger:LogTrace('setting up DNS Server endpoints...')
	local endpointLogger = self.Logger:subLogger('Endpoints')
	local netPort = self.netClient:CreateNetworkPort(PortUsage.HTTP)
	self.apiController = RestApiController(netPort, endpointLogger:subLogger('ApiController'))
	self.endpoints = DNSEndpoints(endpointLogger)
	self.apiController:AddRestApiEndpointBase(self.endpoints)
	netPort:OpenPort()
	self.Logger:LogDebug('setup DNS Server endpoints')
end

function Main:Run()
	self.Logger:LogInfo('started DNS Server')
	while true do
		self.netClient:BroadCast(PortUsage.Heartbeats, 'DNS')
		self.eventPullAdapter:WaitForAll(3)
	end
end

return Main
