---@meta
local PackageData = {}

PackageData["ServicesCallbackCore__events"] = {
    Location = "Services.Callback.Core.__events",
    Namespace = "Services.Callback.Core.__events",
    IsRunnable = true,
    Data = [[
local JsonSerializer = require("Core.Json.JsonSerializer")

---@class Services.Callback.Core.Events : Github_Loading.Entities.Events
local Events = {}

function Events:OnLoaded()
    JsonSerializer.Static__Serializer:AddClasses({
        require("Services.Callback.Core.Entities.CallbackInfo")
    })

    require("Services.Callback.Core.Extensions.NetworkContextExtensions")
end

return Events
]]
}

PackageData["ServicesCallbackCoreEntitiesCallbackInfo"] = {
    Location = "Services.Callback.Core.Entities.CallbackInfo",
    Namespace = "Services.Callback.Core.Entities.CallbackInfo",
    IsRunnable = true,
    Data = [[
---@alias Services.Callback.Core.Entities.CallbackInfo.ExecutionMode
---|"Send"
---|"Invoke"

---@class Services.Callback.Core.Entities.CallbackInfo : Core.Json.Serializable
---@field Id Core.UUID
---@field CallbackMethod string
---@field CallbackServiceName string
---@field ExecutionMode Services.Callback.Core.Entities.CallbackInfo.ExecutionMode
---@overload fun(id: Core.UUID, callbackMethod: string, callbackServiceName: string, executionMode: Services.Callback.Core.Entities.CallbackInfo.ExecutionMode) : Services.Callback.Core.Entities.CallbackInfo
local CallbackInfo = {}

---@private
---@param id Core.UUID
---@param callbackServiceName string
---@param callbackMethod string
---@param executionMode Services.Callback.Core.Entities.CallbackInfo.ExecutionMode
function CallbackInfo:__init(id, callbackMethod, callbackServiceName, executionMode)
    self.Id = id
    self.CallbackMethod = callbackMethod
    self.CallbackServiceName = callbackServiceName
    self.ExecutionMode = executionMode
end

---@return Core.UUID id, string callbackMethod, string callbackServiceName, Services.Callback.Core.Entities.CallbackInfo.ExecutionMode executionMode
function CallbackInfo:Serialize()
    return self.Id, self.CallbackMethod, self.CallbackServiceName, self.ExecutionMode
end

return Utils.Class.CreateClass(CallbackInfo, "Services.Callback.Core.Entities.CallbackInfo",
    require("Core.Json.Serializable"))
]]
}

PackageData["ServicesCallbackCoreExtensionsNetworkContextExtensions"] = {
    Location = "Services.Callback.Core.Extensions.NetworkContextExtensions",
    Namespace = "Services.Callback.Core.Extensions.NetworkContextExtensions",
    IsRunnable = true,
    Data = [[
---@class Net.Core.NetworkContext
local NetworkContextExtensions = {}

---@return Services.Callback.Core.Entities.CallbackInfo callbackInfo, any[] args
function NetworkContextExtensions:GetCallback()
    return self.Body[1], self.Body[2]
end

Utils.Class.ExtendClass(NetworkContextExtensions, require("Net.Core.NetworkContext"))
]]
}

return PackageData