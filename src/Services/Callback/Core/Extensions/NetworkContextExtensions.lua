---@class Net.Core.NetworkContext
local NetworkContextExtensions = {}

---@return Services.Callback.Core.Entities.CallbackInfo callbackInfo, any[] args
function NetworkContextExtensions:GetCallback()
    return self.Body[1], self.Body[2]
end

Utils.Class.Extend(require("Net.Core.NetworkContext"), NetworkContextExtensions)
