local Main = {}
Main.__index = Main

Main.Logger = {}

Main.SetupFilesTree = {
    "",
    IsFolder = true,
    {
        "shared",
        IsFolder = true,
        IgnoreDownload = true,
        {"Logger.lua"}
    },
    {
        "libs",
        IsFolder = true,
        {"Event.lua"},
        {"Serializer.lua"},
        {"EventPullAdapter.lua"},
        {"NetworkCard.lua"}
    }
}

function Main:Configure()
    self.Logger:LogInfo("called configure function")
end

function Main:Test(signalName, signalSender, data)
    print("Got Message to: "..tostring(data.Test))
end

function Main:Run()
    ModuleLoader.GetModule("EventPullAdapter"):Initialize(true)
    local networkCard = computer.getPCIDevices(findClass("NetworkCard"))[1]
    local netClient = ModuleLoader.GetModule("NetworkCard").new(true, networkCard)
    netClient:OpenPort(42)
    netClient:AddListener("Test", self.Test, true)

    local eventPullAdapter = ModuleLoader.GetModule("EventPullAdapter")
    eventPullAdapter:Run()
end

return Main