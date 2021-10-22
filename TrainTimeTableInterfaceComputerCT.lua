local panel = component.proxy("868378D7483D82D2DE3C86B47215BDEC")

print("--Modules--") 
    local loopStationButton = panel:getModule(5, 5)
    local trainSelectButton = panel:getModule(5, 9)
    local stopTrainSwitch = panel:getModule(6, 10)
    local trainSelectPotent = panel:getModule(5, 10)
    local trainNumMicroDisplay = panel:getModule(4, 10)
    local trainSpeedGuage = panel:getModule(0, 10)
    local allTrainStopButton = panel:getModule(10, 10)

    print("loopStationButton:", loopStationButton)
    print("stopTrainSwitch:", stopTrainSwitch)
    print("trainSelectPotent:", trainSelectPotent)
    print("trainSelectButton:", trainSelectButton)
    print("trainNumMicroDisplay:", trainNumMicroDisplay)
    print("trainSpeedGuage:", trainSpeedGuage)
    print("allTrainStopButton:", allTrainStopButton)
print("--Modules--")

local trainStation = component.proxy("97FEF4D44C22F600A77E2C8B74C52B44")

event.listen(loopStationButton)
event.listen(trainSelectButton)
local addCheck = false
local switchSet = false
local trainSelectPotentValSave = 1

trainSelectButton:setColor(0.5, 0.5, 0.5, 0.1)
local tSelectButtonPressed = false

trainSpeedGuage.limit = 200
trainSpeedGuage.percent = 75

while true do
    local e, s = event:pull()
    local trackGraph = trainStation:getTrackGraph()
        local trains = trackGraph:getTrains()
        local stations = trackGraph:getStations()
            for i = 1, #trains do
                TimeTables = {trains[i]:getTimeTable()}
                if stations[i].name == "Looping Station" then
                    LoopStation = stations[i]
                end
            end
    

    if s == loopStationButton then
        print("buttonPressed")
        for i = 1, #trains do
            if trains[i]:getTimeTable().numStops == 1 and addCheck == false then
                TimeTables[i]:addStop(1, LoopStation, 0.1)
                loopStationButton:setColor(0, 1, 0, 0.5)
                print("added")
                addCheck = true
            elseif TimeTables.numStops ~= 1 and addCheck == false then
                loopStationButton:setColor(1, 0, 0, 0.5)
                print("none added")
                addCheck = true
            end
         end
    end

addCheck = false
--TrainSelectSystem

    local targetedTrainNum = trainSelectPotent.value
    local tragetedTrain =  trains[targetedTrainNum]

    if s == trainSelectPotent then
        trainSelectPotent.max = #trains
        --print("trainSelectPotentiometer Max Value:", trainSelectPotent.max)
    end

    if s == trainSelectButton then

        local selectedTrainNum = targetedTrainNum
        SelectedTrain = trains[selectedTrainNum]
        print("Selected Train:", SelectedTrain:getName())
        trainNumMicroDisplay:setText(selectedTrainNum)
        
        stopTrainSwitch.state = SelectedTrain.isSelfDrivng
        
        tSelectButtonPressed = true
    end

    if tSelectButtonPressed == true then
        if s == stopTrainSwitch then
            SelectedTrain:setSelfDriving(stopTrainSwitch.state)
            print("Train Stop Switch State =", stopTrainSwitch.state)
        end

        if SelectedTrain.isSelfDriving == true then
            trainSelectButton:setColor(0, 1, 0, 0.5)
        else
            trainSelectButton:setColor(1, 0, 0, 0.5)
        end
    end
--Speed
    

end