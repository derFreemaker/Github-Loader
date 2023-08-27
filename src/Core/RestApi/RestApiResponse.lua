---@class Core.RestApi.RestApiResponse.Header
---@field Code Core.RestApi.StatusCodes

---@class Core.RestApi.RestApiResponse
---@field Headers Core.RestApi.RestApiResponse.Header | Dictionary<string, any>
---@field Body any
---@field WasSuccessfull boolean
---@overload fun(header: (Core.RestApi.RestApiResponse.Header | Dictionary<string, any>)?, body: any) : Core.RestApi.RestApiResponse
local RestApiResponse = {}

---@private
---@param header (Core.RestApi.RestApiResponse.Header | Dictionary<string, any>)?
---@param body any
function RestApiResponse:RestApiResponse(header, body)
    self.Headers = header or {}
    self.Body = body
    self.WasSuccessfull = self.Headers.Code < 300
end

---@return table
function RestApiResponse:ExtractData()
    return {
        Headers = self.Headers,
        Body = self.Body
    }
end

return Utils.Class.CreateClass(RestApiResponse, "RestApiResponse")