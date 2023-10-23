---@meta
local PackageData = {}

PackageData["DNSClient__events"] = {
    Location = "DNS.Client.__events",
    Namespace = "DNS.Client.__events",
    IsRunnable = true,
    Data = [[
---@class DNS.Client.Events : Github_Loading.Entities.Events
local Events = {}

function Events:OnLoaded()
    require("DNS.Client.Hosting.HostExtensions")
end

return Events
]]
}

PackageData["DNSClientClient"] = {
    Location = "DNS.Client.Client",
    Namespace = "DNS.Client.Client",
    IsRunnable = true,
    Data = [[
local Usage = require("Core.Usage.Usage")

local IPAddress = require("Net.Core.IPAddress")
local NetworkClient = require('Net.Core.NetworkClient')
local ApiClient = require('Net.Rest.Api.Client.Client')
local ApiRequest = require('Net.Rest.Api.Request')

local Address = require('DNS.Core.Entities.Address.Address')
local CreateAddress = require('DNS.Core.Entities.Address.Create')

-- //TODO: rewrite DNS Client

---@class DNS.Client : object
---@field private _NetworkClient Net.Core.NetworkClient
---@field private _ApiClient Net.Rest.Api.Client
---@field private _Logger Core.Logger
---@overload fun(networkClient: Net.Core.NetworkClient, logger: Core.Logger) : DNS.Client
local Client = {}

---@private
---@param networkClient Net.Core.NetworkClient?
---@param logger Core.Logger
function Client:__init(networkClient, logger)
	self._NetworkClient = networkClient or NetworkClient(logger:subLogger('NetworkClient'))
	self._Logger = logger
end

---@return Net.Core.NetworkClient
function Client:GetNetClient()
	return self._NetworkClient
end

---@param networkClient Net.Core.NetworkClient
function Client.Static_WaitForHeartbeat(networkClient)
	networkClient:WaitForEvent(Usage.Events.DNS_Heartbeat, Usage.Ports.Heartbeats)
end

---@param networkClient Net.Core.NetworkClient
---@return Net.Core.IPAddress id
function Client.Static__GetServerAddress(networkClient)
	local netPort = networkClient:GetOrCreateNetworkPort(Usage.Ports.DNS)

	netPort:BroadCastMessage(Usage.Events.DNS_GetServerAddress, nil, nil)
	---@type Net.Core.NetworkContext?
	local response
	local try = 0
	repeat
		try = try + 1
		response = netPort:WaitForEvent(Usage.Events.DNS_ReturnServerAddress, 10)
	until response ~= nil or try == 10
	if try == 10 then
		error('unable to get dns server address')
	end
	---@cast response Net.Core.NetworkContext
	return IPAddress(response.Body)
end

---@return Net.Core.IPAddress id
function Client:RequestOrGetDNSServerIP()
	if not self._ApiClient then
		local serverIPAddress = Client.Static__GetServerAddress(self._NetworkClient)
		self._ApiClient = ApiClient(serverIPAddress, Usage.Ports.HTTP, Usage.Ports.HTTP, self._NetworkClient,
			self._Logger:subLogger('ApiClient'))
	end

	return self._ApiClient.ServerIPAddress
end

---@private
---@param request Net.Rest.Api.Request
function Client:InternalRequest(request)
	self:RequestOrGetDNSServerIP()

	return self._ApiClient:Send(request)
end

---@param url string
---@param ipAddress Net.Core.IPAddress
---@return boolean success
function Client:CreateAddress(url, ipAddress)
	local createAddress = CreateAddress(url, ipAddress:GetAddress())

	local request = ApiRequest('CREATE', 'Address', createAddress:ExtractData())
	local response = self:InternalRequest(request)

	if not response.WasSuccessfull then
		return false
	end
	return response.Body
end

---@param url string
---@return boolean success
function Client:DeleteAddress(url)
	local request = ApiRequest('DELETE', 'Address', url)
	local response = self:InternalRequest(request)

	if not response.WasSuccessfull then
		return false
	end
	return response.Body
end

---@param url string
---@return DNS.Core.Entities.Address? address
function Client:GetWithUrl(url)
	local request = ApiRequest('GET', 'AddressWithAddress', url)
	local response = self:InternalRequest(request)

	if not response.WasSuccessfull then
		return nil
	end
	return Address:Static__CreateFromData(response.Body)
end

---@param ipAddress Net.Core.IPAddress
---@return DNS.Core.Entities.Address? address
function Client:GetWithIPAddress(ipAddress)
	local request = ApiRequest('GET', 'AddressWithId', ipAddress:GetAddress())
	local response = self:InternalRequest(request)

	if not response.WasSuccessfull then
		return nil
	end
	return Address:Static__CreateFromData(response.Body)
end

return Utils.Class.CreateClass(Client, 'DNS.Client')
]]
}

PackageData["DNSClientHostingHostExtensions"] = {
    Location = "DNS.Client.Hosting.HostExtensions",
    Namespace = "DNS.Client.Hosting.HostExtensions",
    IsRunnable = true,
    Data = [[
---@type Out<Github_Loading.Module>
local Host = {}
if not PackageLoader:TryGetModule("Hosting.Host", Host) then
    return
end
---@type Hosting.Host
Host = Host.Return:Load()
-- Run only if module Hosting.Host is loaded

local Task = require("Core.Task")

local DNSClient = require("DNS.Client.Client")

---@param host Hosting.Host
local function readyTaskWaitForDNSServer(host)
    DNSClient.Static_WaitForHeartbeat(host:GetNetworkClient())
end

table.insert(Host._Static__ReadyTasks, Task(readyTaskWaitForDNSServer))
]]
}

return PackageData
