---@meta
local PackageData = {}

PackageData["FactoryControlServer__events"] = {
    Location = "FactoryControl.Server.__events",
    Namespace = "FactoryControl.Server.__events",
    IsRunnable = true,
    Data = [[
local DNSClient = require('DNS.Client.Client')

---@class FactoryControl.Server.Events : Github_Loading.Entities.Events
local Events = {}

function Events:OnLoaded()
    require("FactoryControl.Server.Extensions.HostExtensions")
end

return Events
]]
}

PackageData["FactoryControlServer__main"] = {
    Location = "FactoryControl.Server.__main",
    Namespace = "FactoryControl.Server.__main",
    IsRunnable = true,
    Data = [[
local Config = require('FactoryControl.Core.Config')
local Usage = require('Core.Usage.Usage')

local DatabaseAccessLayer = require("FactoryControl.Server.DatabaseAccessLayer")

local ControllerEndpoints = require('FactoryControl.Server.Endpoints.Controller')
local FeatureEndpoints = require("FactoryControl.Server.Endpoints.Feature")

local Host = require('Hosting.Host')

---@class FactoryControl.Server.Main : Github_Loading.Entities.Main
---@field private m_host Hosting.Host
local Main = {}

function Main:Configure()
	self.m_host = Host(self.Logger:subLogger('Host'), "FactoryControl Server")

	local databaseAccessLayer = DatabaseAccessLayer(self.Logger:subLogger("DatabaseAccessLayer"))

	self.m_host:AddEndpoint(Usage.Ports.HTTP,
		"Controller",
		ControllerEndpoints --{{{@as FactoryControl.Server.Endpoints.Controller}}},
		databaseAccessLayer
	)

	self.m_host:AddEndpoint(Usage.Ports.HTTP,
		"Feature",
		FeatureEndpoints,
		databaseAccessLayer
	)

	self.Logger:LogDebug('setup endpoints')

	self.m_host:FactoryControl_Server_AddFeatureService(databaseAccessLayer, self.m_host:GetNetworkClient())
	local featureService = self.m_host:FactoryControl_Server_GetFeatureService()
	self.m_host:AddCallableEvent(
		Usage.Events.FactoryControl_Feature_Invoked,
		Usage.Ports.FactoryControl,
		featureService.OnFeatureInvoked
	)

	self.Logger:LogDebug("started services")

	self.m_host:RegisterAddress(Config.DOMAIN)
end

function Main:Run()
	self.m_host:Ready()
	while true do
		self.m_host:GetNetworkClient():BroadCast(
			Usage.Ports.FactoryControl_Heartbeat,
			Usage.Events.FactoryControl_Heartbeat)

		self.m_host:RunCycle(3)
	end
end

return Main
]]
}

PackageData["FactoryControlServerDatabaseAccessLayer"] = {
    Location = "FactoryControl.Server.DatabaseAccessLayer",
    Namespace = "FactoryControl.Server.DatabaseAccessLayer",
    IsRunnable = true,
    Data = [[
local DbTable = require("Database.DbTable")
local Path = require("Core.FileSystem.Path")
local UUID = require("Core.Common.UUID")

local ControllerDto = require("FactoryControl.Core.Entities.Controller.ControllerDto")

---@class FactoryControl.Server.DatabaseAccessLayer : object
---@field private m_controllers Database.DbTable
---@field private m_features Database.DbTable
---@field private m_logger Core.Logger
---@overload fun(logger: Core.Logger) : FactoryControl.Server.DatabaseAccessLayer
local DatabaseAccessLayer = {}

---@private
---@param logger Core.Logger
function DatabaseAccessLayer:__init(logger)
    self.m_controllers = DbTable("Controllers", Path("/Database/Controllers/"), logger:subLogger("ControllerTable"))
    self.m_features = DbTable("Features", Path("/Database/Features"), logger:subLogger("FeaturesTable"))
    self.m_logger = logger

    self.m_controllers:Load()
    self.m_features:Load()
end

--------------------------------------------------------------
-- Controller
--------------------------------------------------------------

---@param createController FactoryControl.Core.Entities.Controller.CreateDto
---@return FactoryControl.Core.Entities.ControllerDto? controller
function DatabaseAccessLayer:CreateController(createController)
    local controller = ControllerDto(UUID.Static__New(), createController.Name,
        createController.IPAddress, createController.Features)

    if self:GetControllerByName(createController.Name) then
        return nil
    end

    self.m_controllers:Set(controller.Id:ToString(), controller)
    self.m_controllers:Save()

    return controller
end

---@param controllerId Core.UUID
function DatabaseAccessLayer:DeleteController(controllerId)
    self.m_controllers:Delete(controllerId:ToString())
    self.m_controllers:Save()
end

---@param controllerId Core.UUID
---@return FactoryControl.Core.Entities.ControllerDto? controller
function DatabaseAccessLayer:GetControllerById(controllerId)
    return self.m_controllers:Get(controllerId:ToString())
end

---@param controllerName string
---@return FactoryControl.Core.Entities.ControllerDto? controller
function DatabaseAccessLayer:GetControllerByName(controllerName)
    for _, controller in pairs(self.m_controllers) do
        ---@cast controller FactoryControl.Core.Entities.ControllerDto

        if controller.Name == controllerName then
            return controller
        end
    end
end

--------------------------------------------------------------
-- Feature
--------------------------------------------------------------

---@param feature FactoryControl.Core.Entities.Controller.FeatureDto
---@return FactoryControl.Core.Entities.Controller.FeatureDto feature
function DatabaseAccessLayer:CreateFeature(feature)
    if self:GetFeatureByIds(feature.Id) then
        feature.Id = UUID.Static__New()
    end

    self.m_features:Set(feature.Id:ToString(), feature)
    self.m_features:Save()

    return feature
end

---@param featureId Core.UUID
function DatabaseAccessLayer:DeleteFeature(featureId)
    self.m_features:Delete(featureId:ToString())
    self.m_features:Save()
end

---@param featureId Core.UUID
---@return FactoryControl.Core.Entities.Controller.FeatureDto feature
function DatabaseAccessLayer:GetFeatureById(featureId)
    return self.m_features:Get(featureId:ToString())
end

---@param featureIds Core.UUID[]
---@return FactoryControl.Core.Entities.Controller.FeatureDto[] features
function DatabaseAccessLayer:GetFeatureByIds(featureIds)
    ---@type FactoryControl.Core.Entities.Controller.FeatureDto[]
    local features = {}

    for _, id in pairs(featureIds) do
        table.insert(features, self:GetFeatureById(id))
    end

    return features
end

return Utils.Class.CreateClass(DatabaseAccessLayer, "FactoryControl.Server.Database")
]]
}

PackageData["FactoryControlServerEndpointsController"] = {
    Location = "FactoryControl.Server.Endpoints.Controller",
    Namespace = "FactoryControl.Server.Endpoints.Controller",
    IsRunnable = true,
    Data = [[
local ControllerUrlTemplates = require("FactoryControl.Core.EndpointUrls")[1].Controller

---@class FactoryControl.Server.Endpoints.Controller : Net.Rest.Api.Server.EndpointBase
---@field private m_databaseAccessLayer FactoryControl.Server.DatabaseAccessLayer
---@field private m_logger Core.Logger
---@overload fun(logger: Core.Logger, apiController: Net.Rest.Api.Server.Controller, databaseAccessLayer: FactoryControl.Server.DatabaseAccessLayer) : FactoryControl.Server.Endpoints.Controller
local ControllerEndpoints = {}

---@private
---@param logger Core.Logger
---@param apiController Net.Rest.Api.Server.Controller
---@param databaseAccessLayer FactoryControl.Server.DatabaseAccessLayer
---@param super fun(endpointLogger: Core.Logger, apiController: Net.Rest.Api.Server.Controller)
function ControllerEndpoints:__init(super, logger, apiController, databaseAccessLayer)
	super(logger, apiController)

	self.m_databaseAccessLayer = databaseAccessLayer

	self:AddEndpoint("CONNECT", ControllerUrlTemplates.Connect, self.Connect)

	self:AddEndpoint("CREATE", ControllerUrlTemplates.Create, self.Create)
	self:AddEndpoint("DELETE", ControllerUrlTemplates.Delete, self.Delete)
	self:AddEndpoint("POST", ControllerUrlTemplates.Modify, self.Modify)
	self:AddEndpoint("GET", ControllerUrlTemplates.GetById, self.GetById)
	self:AddEndpoint("GET", ControllerUrlTemplates.GetByName, self.GetByName)
end

---@param connect FactoryControl.Core.Entities.Controller.ConnectDto
---@return Net.Rest.Api.Response response
function ControllerEndpoints:Connect(connect)
	local controller = self.m_databaseAccessLayer:GetControllerByName(connect.Name)
	if not controller then
		return self.Templates:NotFound("Controller with Name: " .. connect.Name .. " was not found.")
	end

	if controller.IPAddress ~= connect.IPAddress then
		controller.IPAddress = connect.IPAddress
	end

	return self.Templates:Ok(controller)
end

---@param createController FactoryControl.Core.Entities.Controller.CreateDto
---@return Net.Rest.Api.Response response
function ControllerEndpoints:Create(createController)
	local controller = self.m_databaseAccessLayer:CreateController(createController)

	if not controller then
		return self.Templates:BadRequest("Controller with Name: " .. createController.Name .. " already exists.")
	end

	return self.Templates:Ok(controller)
end

---@param id Core.UUID
---@return Net.Rest.Api.Response response
function ControllerEndpoints:Delete(id)
	self.m_databaseAccessLayer:DeleteController(id)

	return self.Templates:Ok(true)
end

---@param id Core.UUID
---@param modifyController FactoryControl.Core.Entities.Controller.ModifyDto
---@return Net.Rest.Api.Response response
function ControllerEndpoints:Modify(id, modifyController)
	local controller = self.m_databaseAccessLayer:GetControllerById(id)

	if not controller then
		return self.Templates:NotFound("Controller with id: " .. tostring(id) .. " was not found.")
	end

	controller.Features = modifyController.Features

	return self.Templates:Ok(controller)
end

---@param id Core.UUID
---@return Net.Rest.Api.Response response
function ControllerEndpoints:GetById(id)
	local controller = self.m_databaseAccessLayer:GetControllerById(id)

	if not controller then
		return self.Templates:NotFound("Controller with id: " .. tostring(id) .. " was not found.")
	end

	return self.Templates:Ok(controller)
end

---@param name string
---@return Net.Rest.Api.Response response
function ControllerEndpoints:GetByName(name)
	local controller = self.m_databaseAccessLayer:GetControllerByName(name)

	if not controller then
		return self.Templates:NotFound("Controller with name: " .. name .. " was not found.")
	end

	return self.Templates:Ok(controller)
end

return Utils.Class.CreateClass(ControllerEndpoints, 'FactoryControl.Server.Endpoints.Controller',
	require('Net.Rest.Api.Server.EndpointBase') --{{{@as Net.Rest.Api.Server.EndpointBase}}})
]]
}

PackageData["FactoryControlServerEndpointsFeature"] = {
    Location = "FactoryControl.Server.Endpoints.Feature",
    Namespace = "FactoryControl.Server.Endpoints.Feature",
    IsRunnable = true,
    Data = [[
local UUID = require("Core.Common.UUID")

local FeatureUrlTemplates = require("FactoryControl.Core.EndpointUrls")[1].Feature

---@class FactoryControl.Server.Endpoints.Feature : Net.Rest.Api.Server.EndpointBase
---@field m_databaseAccessLayer FactoryControl.Server.DatabaseAccessLayer
local FeatureEndpoints = {}

---@private
---@param logger Core.Logger
---@param apiController Net.Rest.Api.Server.Controller
---@param databaseAccessLayer FactoryControl.Server.DatabaseAccessLayer
---@param super fun(endpointLogger: Core.Logger, apiController: Net.Rest.Api.Server.Controller)
function FeatureEndpoints:__init(super, logger, apiController, databaseAccessLayer)
    super(logger, apiController)

    self.m_databaseAccessLayer = databaseAccessLayer

    self:AddEndpoint("CREATE", FeatureUrlTemplates.Create, self.Create)
    self:AddEndpoint("DELETE", FeatureUrlTemplates.Delete, self.Delete)
    self:AddEndpoint("GET", FeatureUrlTemplates.GetById, self.GetByIds)
end

---@param feature FactoryControl.Core.Entities.Controller.FeatureDto
---@return Net.Rest.Api.Response response
function FeatureEndpoints:Create(feature)
    feature = self.m_databaseAccessLayer:CreateFeature(feature)
    return self.Templates:Ok(feature)
end

---@param id Core.UUID
---@return Net.Rest.Api.Response response
function FeatureEndpoints:Delete(id)
    self.m_databaseAccessLayer:DeleteFeature(id)
    return self.Templates:Ok(true)
end

---@param featureIds Core.UUID[]
---@return Net.Rest.Api.Response response
function FeatureEndpoints:GetByIds(featureIds)
    local features = self.m_databaseAccessLayer:GetFeatureByIds(featureIds)

    return self.Templates:Ok(features)
end

return Utils.Class.CreateClass(FeatureEndpoints, "FactoryControl.Server.Endpoints.Feature",
    require("Net.Rest.Api.Server.EndpointBase") --{{{@as Net.Rest.Api.Server.EndpointBase}}})
]]
}

PackageData["FactoryControlServerExtensionsHostExtensions"] = {
    Location = "FactoryControl.Server.Extensions.HostExtensions",
    Namespace = "FactoryControl.Server.Extensions.HostExtensions",
    IsRunnable = true,
    Data = [[
local FeatureService = require("FactoryControl.Server.Services.FeatureService")

---@class Hosting.Host
---@field package m_FeatureService FactoryControl.Server.Services.FeatureService
local HostExtensions = {}

---@param databaseAccessLayer FactoryControl.Server.DatabaseAccessLayer
---@param networkClient Net.Core.NetworkClient
function HostExtensions:FactoryControl_Server_AddFeatureService(databaseAccessLayer, networkClient)
    self.m_FeatureService = FeatureService(databaseAccessLayer, networkClient)
end

---@return FactoryControl.Server.Services.FeatureService
function HostExtensions:FactoryControl_Server_GetFeatureService()
    if not self.m_FeatureService then
        error("feature service was not added")
    end

    return self.m_FeatureService
end

Utils.Class.ExtendClass(HostExtensions,
    require("Hosting.Host") --{{{@as Hosting.Host}}})
]]
}

PackageData["FactoryControlServerServicesFeatureService"] = {
    Location = "FactoryControl.Server.Services.FeatureService",
    Namespace = "FactoryControl.Server.Services.FeatureService",
    IsRunnable = true,
    Data = [[
local Usage = require("Core.Usage.Usage")

local Task = require("Core.Common.Task")

---@class FactoryControl.Server.Services.FeatureService
---@field OnFeatureInvoked Core.Task
---@field private m_WatchedFeatures table<string, Net.Core.IPAddress[]>
---@field private m_DatabaseAccessLayer FactoryControl.Server.DatabaseAccessLayer
---@field private m_NetworkClient Net.Core.NetworkClient
---@overload fun(databaseAccessLayer: FactoryControl.Server.DatabaseAccessLayer, networkClient: Net.Core.NetworkClient) : FactoryControl.Server.Services.FeatureService
local FeatureService = {}

---@private
---@param databaseAccessLayer FactoryControl.Server.DatabaseAccessLayer
---@param networkClient Net.Core.NetworkClient
function FeatureService:__init(databaseAccessLayer, networkClient)
    self.m_DatabaseAccessLayer = databaseAccessLayer
    self.m_NetworkClient = networkClient

    self.OnFeatureInvoked = Task(self.onFeatureInvoked, self)
end

---@private
---@param context Net.Core.NetworkContext
function FeatureService:onFeatureInvoked(context)
    local featureUpdate = context:GetFeatureUpdate()

    self:SendToController(featureUpdate)
    self:SendToWachters(featureUpdate)
end

---@param featureUpdate FactoryControl.Core.Entities.Controller.Feature.Update
function FeatureService:SendToController(featureUpdate)
    local feature = self.m_DatabaseAccessLayer:GetFeatureById(featureUpdate.FeatureId)
    if not feature then
        self.m_WatchedFeatures[featureUpdate.FeatureId:ToString()] = nil
        return
    end

    local controller = self.m_DatabaseAccessLayer:GetControllerById(feature.ControllerId)
    if not controller then
        return
    end

    self.m_NetworkClient:Send(
        controller.IPAddress,
        Usage.Ports.FactoryControl,
        Usage.Events.FactoryControl_Feature_Invoked,
        featureUpdate
    )
end

---@param featureUpdate FactoryControl.Core.Entities.Controller.Feature.Update
function FeatureService:SendToWachters(featureUpdate)
    local ipAddresses = self.m_WatchedFeatures[featureUpdate.FeatureId:ToString()]
    if not ipAddresses then
        return
    end

    for _, ipAddress in ipairs(ipAddresses) do
        self.m_NetworkClient:Send(
            ipAddress,
            Usage.Ports.FactoryControl,
            Usage.Events.FactoryControl_Feature_Invoked,
            featureUpdate
        )
    end
end

return Utils.Class.CreateClass(FeatureService, "FactoryControl.Server.Services.FeatureService")
]]
}

return PackageData
