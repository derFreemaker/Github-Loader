local PackageData = {}

-- ########## Controller ##########

PackageData.oHMuZVFz = {
    Namespace = "Controller.__main",
    Name = "__main",
    FullName = "__main.lua",
    IsRunnable = true,
    Data = [[
local NetworkClient = require("Core.Net.NetworkClient")
local FactoryControlRestApiClient = require("FactoryControl.Core.FactoryControlApiClient")
local Main = {}
function Main:Configure()
    local netClient = NetworkClient(self.Logger:subLogger("NetworkClient"))
    self.apiClient = FactoryControlRestApiClient(netClient)
    self.Logger:LogDebug("setup apiClient")
end
function Main:Run()
    local result = self.apiClient:CreateController()
    self.Logger:LogInfo("result: ".. tostring(result))
end
return Main
]]
}

-- ########## Controller ########## --

return PackageData
