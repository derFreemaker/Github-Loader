local EventNameUsage    = require("Core.Usage.Usage_EventName")
local StatusCodes       = require("Net.Core.StatusCodes")

local ResponseTemplates = require('Net.Rest.Api.Server.ResponseTemplates')

local UUID              = require("Core.UUID")

---@class Net.Rest.Api.Server.Endpoint : object
---@field private _EndpointUriPattern string
---@field private _EndpointUriTemplate string
---@field private _ParameterTypes string[]
---@field private _Task Core.Task
---@field private _Logger Core.Logger
---@overload fun(endpointUriPattern: string, task: Core.Task, logger: Core.Logger) : Net.Rest.Api.Server.Endpoint
local Endpoint          = {}

---@private
---@param endpointUriPattern string
---@param task Core.Task
---@param logger Core.Logger
function Endpoint:__init(endpointUriPattern, task, logger)
    self._EndpointUriPattern = endpointUriPattern
    self._EndpointUriTemplate = endpointUriPattern:gsub("{[a-zA-Z0-9]*:[a-zA-Z0-9\\.]*}", "(.+)")

    self._ParameterTypes = {}
    for parameterType in endpointUriPattern:gmatch("{[a-zA-Z0-9]*:([a-zA-Z0-9\\.]*)}") do
        table.insert(self._ParameterTypes, parameterType)
    end

    self._Task = task
    self._Logger = logger
end

---@private
---@param uri string
---@return any[] parameters
function Endpoint:GetUriParameters(uri)
    local parameters = { uri:match(self._EndpointUriTemplate) }

    local parameterTypes = self._ParameterTypes
    for i = 1, #parameters, 1 do
        local parameterType = parameterTypes[i]
        local parameter = parameters[i]

        if parameterType == "boolean" then
            parameters[i] = parameter == "true"
        elseif parameterType == "string" then
        elseif parameterType == "number" then
            parameters[i] = tonumber(parameter)
        elseif parameterType == "integer" then
            local number = tonumber(parameter)
            if number then
                parameters[i] = math.floor(number)
            end
        elseif parameterType == "Core.UUID" then
            parameters[i] = UUID.Static__Parse(parameter)
        else
            error("unkown parameter type: '" .. parameterType .. "'")
        end
    end

    return parameters
end

---@private
---@param uri string
---@return any[] parameters, string? parseError
function Endpoint:ParseUriParameters(uri)
    local success, errorMsg, returns = Utils.Function.InvokeProtected(self.GetUriParameters, self, uri)
    return returns[1] or {}, errorMsg
end

---@private
---@param uriParameters any[]
---@param request Net.Rest.Api.Request
---@param context Net.Core.NetworkContext
---@return Net.Rest.Api.Response response
function Endpoint:Execute(uriParameters, request, context)
    local response
    if #uriParameters == 0 then
        response = self._Task:Execute(request.Body, request, context)
    else
        response = self._Task:Execute(table.unpack(uriParameters), request.Body, request, context)
    end
    self._Task:Close()

    if not self._Task:IsSuccess() then
        response = ResponseTemplates.InternalServerError(self._Task:GetTraceback() or "no error")
    end

    return response
end

---@param request Net.Rest.Api.Request
---@param context Net.Core.NetworkContext
---@return Net.Rest.Api.Response response
function Endpoint:Invoke(request, context)
    self._Logger:LogTrace('executing...')
    ___logger:setLogger(self._Logger)

    local response
    local uriParameters, parseError = self:ParseUriParameters(tostring(request.Endpoint))
    if parseError then
        response = ResponseTemplates.InternalServerError(parseError or "uri parameters could not be parsed")
        return response
    end

    response = self:Execute(uriParameters, request, context)

    if response.WasSuccessfull then
        self._Logger:LogDebug('request finished with status code: ' .. response.Headers.Code)
    else
        if response.Headers.Code == StatusCodes.Status500InternalServerError then
            self._Logger:LogError('request finished with status code: '
                .. response.Headers.Code .. " with message: '" .. response.Headers.Message .. "'")
        else
            self._Logger:LogWarning('request finished with status code: '
                .. response.Headers.Code .. " with message: '" .. response.Headers.Message .. "'")
        end
    end

    return response
end

return Utils.Class.CreateClass(Endpoint, "Net.Rest.Api.Server.Endpoint")
