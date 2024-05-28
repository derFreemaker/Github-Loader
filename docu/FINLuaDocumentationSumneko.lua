---@meta
---@diagnostic disable


--- The base class of every object.
---@class Object
local Object

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Object.hash = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
Object.internalName = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
Object.internalPath = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Object.hash = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
Object.internalName = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
Object.internalPath = nil

--- Returns a hash of this object. This is a value that nearly uniquely identifies this object.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function Object:getHash() end

--- Returns the type (aka class) of this object.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Class
function Object:getType() end

--- Checks if this Object is a child of the given typen.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param parent Object @The parent we check if this object is a child of.
---@return boolean
function Object:isA(parent) end

--- A component/part of an actor in the world.
---@class ActorComponent : Object
local ActorComponent

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Actor
ActorComponent.owner = nil

--- This is the base class of all things that can exist within the world by them self.
---@class Actor : Object
local Actor

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Vector
Actor.location = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Vector
Actor.scale = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Rotator
Actor.rotation = nil

--- Returns a list of power connectors this actor might have.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.PowerConnection[]
function Actor:getPowerConnectors() end

--- Returns a list of factory connectors this actor might have.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.FactoryConnection[]
function Actor:getFactoryConnectors() end

--- Returns a list of pipe (fluid & hyper) connectors this actor might have.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.PipeConnectionBase[]
function Actor:getPipeConnectors() end

--- Returns a list of inventories this actor might have.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory[]
function Actor:getInventories() end

--- Returns the name of network connectors this actor might have.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return ActorComponent[]
function Actor:getNetworkConnectors() end

--- Returns the components that make-up this actor.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param componentType ActorComponent @The class will be used as filter.
---@return ActorComponent[]
function Actor:getComponents(componentType) end

--- The type of an item (iron plate, iron rod, leaves)
---@class Satis.ItemType : Object
local ItemType

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ItemType.form = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ItemType.energy = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ItemType.radioactiveDecay = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
ItemType.name = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
ItemType.description = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ItemType.max = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
ItemType.canBeDiscarded = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Satis.ItemCategory
ItemType.category = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Color
ItemType.fluidColor = nil

--- The base class of all buildables.
---@class Satis.Buildable : Actor
local Buildable

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Buildable.numPowerConnections = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Buildable.numFactoryConnections = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Buildable.numFactoryOutputConnections = nil

--- Triggers when the production state of the buildable changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, State = event.pull()
--- ```
--- - `signalName: "ProductionChanged"`
--- - `component: Buildable`
--- - `State: number` <br>
--- The new production state.
---@deprecated
---@type FIN.Signal
Buildable.ProductionChanged = { isVarArgs = false }

--- 
---@class Satis.FGBuildableConveyorAttachment : Satis.Buildable
local FGBuildableConveyorAttachment

--- 
---@class Satis.FGBuildableAttachmentMerger : Satis.FGBuildableConveyorAttachment
local FGBuildableAttachmentMerger

--- 
---@class Satis.FGBuildableAttachmentSplitter : Satis.FGBuildableConveyorAttachment
local FGBuildableAttachmentSplitter

--- The base class of most machines you can build.
---@class Satis.Factory : Satis.Buildable
local Factory

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Factory.progress = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Factory.powerConsumProducing = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Factory.productivity = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Factory.cycleTime = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Factory.maxPotential = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Factory.minPotential = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
Factory.standby = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Factory.potential = nil

--- The base class of every machine that uses a recipe to produce something automatically.
---@class Satis.Manufacturer : Satis.Factory
local Manufacturer

--- Returns the currently set recipe of the manufacturer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Recipe
function Manufacturer:getRecipe() end

--- Returns the list of recipes this manufacturer can get set to and process.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Recipe[]
function Manufacturer:getRecipes() end

--- Sets the currently producing recipe of this manufacturer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param recipe Satis.Recipe @The recipe this manufacturer should produce.
---@return boolean
function Manufacturer:setRecipe(recipe) end

--- Returns the input inventory of this manufacturer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory
function Manufacturer:getInputInv() end

--- Returns the output inventory of this manufacturer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory
function Manufacturer:getOutputInv() end

--- 
---@class Satis.FGBuildableAutomatedWorkBench : Satis.Manufacturer
local FGBuildableAutomatedWorkBench

--- 
---@class Satis.FGBuildableFactoryBuilding : Satis.Buildable
local FGBuildableFactoryBuilding

--- 
---@class Satis.FGBuildableBeam : Satis.FGBuildableFactoryBuilding
local FGBuildableBeam

--- 
---@class Satis.FGBuildableBeamLightweight : Satis.FGBuildableBeam
local FGBuildableBeamLightweight

--- 
---@class Satis.FGBuildableBlueprintDesigner : Satis.Buildable
local FGBuildableBlueprintDesigner

--- 
---@class Satis.FGBuildableCalendar : Satis.Buildable
local FGBuildableCalendar

--- 
---@class Satis.FGBuildableCheatFluidSink : Satis.Factory
local FGBuildableCheatFluidSink

--- 
---@class Satis.FGBuildableCheatFluidSpawner : Satis.Factory
local FGBuildableCheatFluidSpawner

--- A building that can connect two circuit networks together.
---@class Satis.CircuitBridge : Satis.Buildable
local CircuitBridge

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
CircuitBridge.isBridgeConnected = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
CircuitBridge.isBridgeActive = nil

--- A circuit bridge that can be activated and deactivate by the player.
---@class Satis.CircuitSwitch : Satis.CircuitBridge
local CircuitSwitch

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
CircuitSwitch.isSwitchOn = nil

--- Changes the circuit switch state.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param state boolean @The new switch state.
function CircuitSwitch:setIsSwitchOn(state) end

--- 
---@class Satis.FGBuildableControlPanelHost : Satis.CircuitBridge
local FGBuildableControlPanelHost

--- 
---@class Satis.FGBuildableConveyorAttachmentLightweight : Satis.FGBuildableConveyorAttachment
local FGBuildableConveyorAttachmentLightweight

--- 
---@class Satis.FGBuildableConveyorBase : Satis.Buildable
local FGBuildableConveyorBase

--- 
---@class Satis.FGBuildableConveyorBelt : Satis.FGBuildableConveyorBase
local FGBuildableConveyorBelt

--- 
---@class Satis.FGBuildableConveyorLift : Satis.FGBuildableConveyorBase
local FGBuildableConveyorLift

--- 
---@class Satis.FGBuildableCornerWall : Satis.FGBuildableFactoryBuilding
local FGBuildableCornerWall

--- 
---@class Satis.FGBuildableDecor : Satis.Buildable
local FGBuildableDecor

--- A docking station for wheeled vehicles to transfer cargo.
---@class Satis.DockingStation : Satis.Factory
local DockingStation

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
DockingStation.isLoadMode = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
DockingStation.isLoadUnloading = nil

--- Returns the fuel inventory of the docking station.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory
function DockingStation:getFuelInv() end

--- Returns the cargo inventory of the docking staiton.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory
function DockingStation:getInv() end

--- Returns the currently docked actor.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Actor
function DockingStation:getDocked() end

--- Undocked the currently docked vehicle from this docking station.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function DockingStation:undock() end

--- 
---@class Satis.FGBuildableWall : Satis.FGBuildableFactoryBuilding
local FGBuildableWall

--- The base class of all doors.
---@class Satis.Door : Satis.FGBuildableWall
local Door

--- Returns the Door Mode/Configuration.<br>
--- 0 = Automatic<br>
--- 1 = Always Closed<br>
--- 2 = Always Open
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function Door:getConfiguration() end

--- Sets the Door Mode/Configuration, only some modes are allowed, if the mod you try to set is invalid, nothing changes.<br>
--- 0 = Automatic<br>
--- 1 = Always Closed<br>
--- 2 = Always Open
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param configuration number @The new configuration for the door.
function Door:setConfiguration(configuration) end

--- 
---@class Satis.FGBuildableDroneStation : Satis.Factory
local FGBuildableDroneStation

--- 
---@class Satis.FGBuildableFactoryBuildingLightweight : Satis.FGBuildableFactoryBuilding
local FGBuildableFactoryBuildingLightweight

--- 
---@class Satis.FGBuildableFactorySimpleProducer : Satis.Factory
local FGBuildableFactorySimpleProducer

--- The base class for all light you can build.
---@class Satis.LightSource : Satis.Buildable
local LightSource

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
LightSource.isLightEnabled = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
LightSource.isTimeOfDayAware = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
LightSource.intensity = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
LightSource.colorSlot = nil

--- Returns the light color that is referenced by the given slot.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param slot number @The slot you want to get the referencing color from.
---@return Color
function LightSource:getColorFromSlot(slot) end

--- Allows to update the light color that is referenced by the given slot.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param slot number @The slot you want to update the referencing color for.
---@param color Color @The color this slot should now reference.
function LightSource:setColorFromSlot(slot, color) end

--- 
---@class Satis.FGBuildableFloodlight : Satis.LightSource
local FGBuildableFloodlight

--- 
---@class Satis.FGBuildableFoundation : Satis.FGBuildableFactoryBuilding
local FGBuildableFoundation

--- 
---@class Satis.FGBuildableFoundationLightweight : Satis.FGBuildableFoundation
local FGBuildableFoundationLightweight

--- 
---@class Satis.FGBuildableResourceExtractorBase : Satis.Factory
local FGBuildableResourceExtractorBase

--- 
---@class Satis.FGBuildableFrackingActivator : Satis.FGBuildableResourceExtractorBase
local FGBuildableFrackingActivator

--- 
---@class Satis.FGBuildableResourceExtractor : Satis.FGBuildableResourceExtractorBase
local FGBuildableResourceExtractor

--- 
---@class Satis.FGBuildableFrackingExtractor : Satis.FGBuildableResourceExtractor
local FGBuildableFrackingExtractor

--- 
---@class Satis.FGBuildableGenerator : Satis.Factory
local FGBuildableGenerator

--- 
---@class Satis.FGBuildableGeneratorFuel : Satis.FGBuildableGenerator
local FGBuildableGeneratorFuel

--- 
---@class Satis.FGBuildableGeneratorGeoThermal : Satis.FGBuildableGenerator
local FGBuildableGeneratorGeoThermal

--- 
---@class Satis.FGBuildableGeneratorNuclear : Satis.FGBuildableGeneratorFuel
local FGBuildableGeneratorNuclear

--- 
---@class Satis.FGBuildableHubTerminal : Satis.Buildable
local FGBuildableHubTerminal

--- 
---@class Satis.FGBuildableJumppad : Satis.Factory
local FGBuildableJumppad

--- 
---@class Satis.FGBuildableLadder : Satis.Buildable
local FGBuildableLadder

--- A control panel to configure multiple lights at once.
---@class Satis.LightsControlPanel : Satis.FGBuildableControlPanelHost
local LightsControlPanel

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
LightsControlPanel.isLightEnabled = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
LightsControlPanel.isTimeOfDayAware = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
LightsControlPanel.intensity = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
LightsControlPanel.colorSlot = nil

--- Allows to update the light color that is referenced by the given slot.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param slot number @The slot you want to update the referencing color for.
---@param color Color @The color this slot should now reference.
function LightsControlPanel:setColorFromSlot(slot, color) end

--- 
---@class Satis.FGBuildableMAM : Satis.Buildable
local FGBuildableMAM

--- 
---@class Satis.FGBuildableManufacturerVariablePower : Satis.Manufacturer
local FGBuildableManufacturerVariablePower

--- 
---@class Satis.FGBuildablePassthroughBase : Satis.Buildable
local FGBuildablePassthroughBase

--- 
---@class Satis.FGBuildablePassthrough : Satis.FGBuildablePassthroughBase
local FGBuildablePassthrough

--- 
---@class Satis.FGBuildablePassthroughPipeHyper : Satis.FGBuildablePassthroughBase
local FGBuildablePassthroughPipeHyper

--- 
---@class Satis.FGBuildablePillar : Satis.FGBuildableFactoryBuilding
local FGBuildablePillar

--- 
---@class Satis.FGBuildablePillarLightweight : Satis.FGBuildablePillar
local FGBuildablePillarLightweight

--- 
---@class Satis.FGBuildablePipeBase : Satis.Buildable
local FGBuildablePipeBase

--- A hypertube pipe
---@class Satis.BuildablePipeHyper : Satis.FGBuildablePipeBase
local BuildablePipeHyper

--- 
---@class Satis.FGBuildablePipeHyperAttachment : Satis.Factory
local FGBuildablePipeHyperAttachment

--- 
---@class Satis.FGBuildablePipeHyperBooster : Satis.FGBuildablePipeHyperAttachment
local FGBuildablePipeHyperBooster

--- 
---@class Satis.FGBuildablePipeHyperJunction : Satis.FGBuildablePipeHyperAttachment
local FGBuildablePipeHyperJunction

--- 
---@class Satis.FGBuildablePipeline : Satis.FGBuildablePipeBase
local FGBuildablePipeline

--- 
---@class Satis.FGBuildablePipelineAttachment : Satis.Factory
local FGBuildablePipelineAttachment

--- 
---@class Satis.FGBuildablePipelineFlowIndicator : Satis.Buildable
local FGBuildablePipelineFlowIndicator

--- 
---@class Satis.FGBuildablePipelineJunction : Satis.FGBuildablePipelineAttachment
local FGBuildablePipelineJunction

--- A building that can pump fluids to a higher level within a pipeline.
---@class Satis.PipelinePump : Satis.FGBuildablePipelineAttachment
local PipelinePump

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.maxHeadlift = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.designedHeadlift = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.indicatorHeadlift = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.indicatorHeadliftPct = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
PipelinePump.userFlowLimit = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.flowLimit = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.flowLimitPct = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.flow = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipelinePump.flowPct = nil

--- 
---@class Satis.FGBuildablePoleBase : Satis.Buildable
local FGBuildablePoleBase

--- 
---@class Satis.FGBuildablePipelineSupport : Satis.FGBuildablePoleBase
local FGBuildablePipelineSupport

--- 
---@class Satis.FGBuildablePipePart : Satis.Factory
local FGBuildablePipePart

--- 
---@class Satis.FGBuildablePipeHyperPart : Satis.FGBuildablePipePart
local FGBuildablePipeHyperPart

--- The base class for all fluid tanks.
---@class Satis.PipeReservoir : Satis.Factory
local PipeReservoir

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeReservoir.fluidContent = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeReservoir.maxFluidContent = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeReservoir.flowFill = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeReservoir.flowDrain = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeReservoir.flowLimit = nil

--- Emptys the whole fluid container.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function PipeReservoir:flush() end

--- Returns the type of the fluid.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.ItemType
function PipeReservoir:getFluidType() end

--- The base class for all signs in the game.
---@class Satis.SignBase : Satis.Buildable
local SignBase

--- Returns the sign type descriptor
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.SignType
function SignBase:getSignType() end

--- 
---@class Satis.FGBuildablePixelSign : Satis.SignBase
local FGBuildablePixelSign

--- 
---@class Satis.FGBuildablePole : Satis.FGBuildablePoleBase
local FGBuildablePole

--- 
---@class Satis.FGBuildablePoleLightweight : Satis.FGBuildablePole
local FGBuildablePoleLightweight

--- 
---@class Satis.FGBuildablePowerPole : Satis.Buildable
local FGBuildablePowerPole

--- A building that can store power for later usage.
---@class Satis.PowerStorage : Satis.Factory
local PowerStorage

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.powerStore = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.powerCapacity = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.powerStorePercent = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.powerIn = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.powerOut = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.timeUntilFull = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.timeUntilEmpty = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.batteryStatus = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerStorage.batteryMaxIndicatorLevel = nil

--- 
---@class Satis.FGBuildablePowerTower : Satis.Buildable
local FGBuildablePowerTower

--- A circuit power switch that can be activated and deactivated based on a priority to prevent a full factory power shutdown.
---@class Satis.CircuitSwitchPriority : Satis.CircuitSwitch
local CircuitSwitchPriority

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
CircuitSwitchPriority.priority = nil

--- 
---@class Satis.FGBuildableRadarTower : Satis.Factory
local FGBuildableRadarTower

--- 
---@class Satis.FGBuildableRailroadBridge : Satis.Buildable
local FGBuildableRailroadBridge

--- A train signal to control trains on a track.
---@class Satis.RailroadSignal : Satis.Buildable
local RailroadSignal

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadSignal.isPathSignal = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadSignal.isBiDirectional = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadSignal.hasObservedBlock = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadSignal.blockValidation = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadSignal.aspect = nil

--- Returns the track block this signals observes.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.RailroadSignalBlock
function RailroadSignal:getObservedBlock() end

--- Returns a list of the guarded connections. (incoming connections)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrackConnection[]
function RailroadSignal:getGuardedConnnections() end

--- Returns a list of the observed connections. (outgoing connections)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrackConnection[]
function RailroadSignal:getObservedConnections() end

--- Triggers when the aspect of this signal changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Aspect = event.pull()
--- ```
--- - `signalName: "AspectChanged"`
--- - `component: RailroadSignal`
--- - `Aspect: number` <br>
--- The new aspect of the signal (see 'Get Aspect' for more information)
---@deprecated
---@type FIN.Signal
RailroadSignal.AspectChanged = { isVarArgs = false }

--- Triggers when the validation of this signal changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Validation = event.pull()
--- ```
--- - `signalName: "ValidationChanged"`
--- - `component: RailroadSignal`
--- - `Validation: number` <br>
--- The new validation of the signal (see 'Block Validation' for more information)
---@deprecated
---@type FIN.Signal
RailroadSignal.ValidationChanged = { isVarArgs = false }

--- The base class for all train station parts.
---@class Satis.TrainPlatform : Satis.Factory
local TrainPlatform

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
TrainPlatform.status = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
TrainPlatform.isReversed = nil

--- Returns the track graph of which this platform is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.TrackGraph
function TrainPlatform:getTrackGraph() end

--- Returns the track pos at which this train platform is placed.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrack,number,number
function TrainPlatform:getTrackPos() end

--- Returns the connected platform in the given direction.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param direction number @The direction in which you want to get the connected platform.
---@return Satis.TrainPlatform
function TrainPlatform:getConnectedPlatform(direction) end

--- Returns the currently docked vehicle.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Vehicle
function TrainPlatform:getDockedVehicle() end

--- Returns the master platform of this train station.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle
function TrainPlatform:getMaster() end

--- Returns the currently docked locomotive at the train station.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle
function TrainPlatform:getDockedLocomotive() end

--- The train station master platform. This platform holds the name and manages docking of trains.
---@class Satis.RailroadStation : Satis.TrainPlatform
local RailroadStation

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type string
RailroadStation.name = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadStation.dockedOffset = nil

--- Triggers when a train tries to dock onto the station.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Offset = event.pull()
--- ```
--- - `signalName: "StartDocking"`
--- - `component: RailroadStation`
--- - `Offset: number` <br>
--- The offset at witch the train tried to dock.
---@deprecated
---@type FIN.Signal
RailroadStation.StartDocking = { isVarArgs = false }

--- Triggers when a train finished the docking procedure and is ready to depart the station.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "FinishDocking"`
--- - `component: RailroadStation`
---@deprecated
---@type FIN.Signal
RailroadStation.FinishDocking = { isVarArgs = false }

--- Triggers when a train cancels the docking procedure.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "CancelDocking"`
--- - `component: RailroadStation`
---@deprecated
---@type FIN.Signal
RailroadStation.CancelDocking = { isVarArgs = false }

--- The controler object for a railroad switch.
---@class Satis.RailroadSwitchControl : Satis.Factory
local RailroadSwitchControl

--- Toggles the railroad switch like if you interact with it.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function RailroadSwitchControl:toggleSwitch() end

--- Returns the current switch position of this switch.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function RailroadSwitchControl:switchPosition() end

--- Returns the Railroad Connection this switch is controlling.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrackConnection
function RailroadSwitchControl:getControlledConnection() end

--- A peice of railroad track over which trains can drive.
---@class Satis.RailroadTrack : Satis.Buildable
local RailroadTrack

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadTrack.length = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadTrack.isOwnedByPlatform = nil

--- Returns the closes track position from the given world position
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param worldPos Vector @The world position form which you want to get the closest track position.
---@return Satis.RailroadTrack,number,number
function RailroadTrack:getClosestTrackPosition(worldPos) end

--- Returns the world location and world rotation of the track position from the given track position.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param track Satis.RailroadTrack @The track the track pos points to.
---@param offset number @The offset of the track pos.
---@param forward number @The forward direction of the track pos. 1 = with the track direction, -1 = against the track direction
---@return Vector,Vector
function RailroadTrack:getWorldLocAndRotAtPos(track, offset, forward) end

--- Returns the railroad track connection at the given direction.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param direction number @The direction of which you want to get the connector from. 0 = front, 1 = back
---@return Satis.RailroadTrackConnection
function RailroadTrack:getConnection(direction) end

--- Returns the track graph of which this track is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.TrackGraph
function RailroadTrack:getTrackGraph() end

--- Returns a list of Railroad Vehicles on the Track
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle[]
function RailroadTrack:getVehciles() end

--- Triggered when a vehicle enters the track.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Vehicle = event.pull()
--- ```
--- - `signalName: "VehicleEnter"`
--- - `component: RailroadTrack`
--- - `Vehicle: Satis.RailroadVehicle` <br>
--- The vehicle that entered the track.
---@deprecated
---@type FIN.Signal
RailroadTrack.VehicleEnter = { isVarArgs = false }

--- Triggered when a vehcile exists the track.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Vehicle = event.pull()
--- ```
--- - `signalName: "VehicleExit"`
--- - `component: RailroadTrack`
--- - `Vehicle: Satis.RailroadVehicle` <br>
--- The vehicle that exited the track.
---@deprecated
---@type FIN.Signal
RailroadTrack.VehicleExit = { isVarArgs = false }

--- 
---@class Satis.FGBuildableRamp : Satis.FGBuildableFoundation
local FGBuildableRamp

--- The resource sink, also known a A.W.E.S.O.M.E Sink
---@class Satis.ResourceSink : Satis.Factory
local ResourceSink

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ResourceSink.numPoints = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ResourceSink.numCoupons = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ResourceSink.numPointsToNextCoupon = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
ResourceSink.couponProgress = nil

--- 
---@class Satis.FGBuildableResourceSinkShop : Satis.Factory
local FGBuildableResourceSinkShop

--- 
---@class Satis.FGBuildableRoad : Satis.Buildable
local FGBuildableRoad

--- 
---@class Satis.FGBuildableSignSupport : Satis.FGBuildablePoleBase
local FGBuildableSignSupport

--- 
---@class Satis.FGBuildableSnowDispenser : Satis.Buildable
local FGBuildableSnowDispenser

--- 
---@class Satis.FGBuildableSpaceElevator : Satis.Factory
local FGBuildableSpaceElevator

--- 
---@class Satis.FGBuildableSpeedSign : Satis.Buildable
local FGBuildableSpeedSign

--- 
---@class Satis.FGBuildableSplitterSmart : Satis.FGBuildableConveyorAttachment
local FGBuildableSplitterSmart

--- 
---@class Satis.FGBuildableStair : Satis.FGBuildableFactoryBuilding
local FGBuildableStair

--- 
---@class Satis.FGBuildableStorage : Satis.Factory
local FGBuildableStorage

--- 
---@class Satis.FGBuildableTradingPost : Satis.Factory
local FGBuildableTradingPost

--- A train platform that allows for loading and unloading cargo cars.
---@class Satis.TrainPlatformCargo : Satis.TrainPlatform
local TrainPlatformCargo

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
TrainPlatformCargo.isLoading = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
TrainPlatformCargo.isUnloading = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
TrainPlatformCargo.dockedOffset = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
TrainPlatformCargo.outputFlow = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
TrainPlatformCargo.inputFlow = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
TrainPlatformCargo.fullLoad = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
TrainPlatformCargo.fullUnload = nil

--- 
---@class Satis.FGBuildableTrainPlatformEmpty : Satis.TrainPlatform
local FGBuildableTrainPlatformEmpty

--- 
---@class Satis.FGBuildableWalkway : Satis.FGBuildableFactoryBuilding
local FGBuildableWalkway

--- 
---@class Satis.FGBuildableWalkwayLightweight : Satis.FGBuildableWalkway
local FGBuildableWalkwayLightweight

--- 
---@class Satis.FGBuildableWallLightweight : Satis.FGBuildableWall
local FGBuildableWallLightweight

--- 
---@class Satis.FGBuildableWaterPump : Satis.FGBuildableResourceExtractor
local FGBuildableWaterPump

--- The type of sign that allows you to define layouts, images, texts and colors manually.
---@class Satis.WidgetSign : Satis.SignBase
local WidgetSign

--- Sets the prefabg sign data e.g. the user settings like colo and more to define the signs content.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param prefabSignData Satis.PrefabSignData @The new prefab sign data for this sign.
function WidgetSign:setPrefabSignData(prefabSignData) end

--- Returns the prefabg sign data e.g. the user settings like colo and more to define the signs content.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.PrefabSignData
function WidgetSign:getPrefabSignData() end

--- 
---@class Satis.FGBuildableWindTurbine : Satis.Factory
local FGBuildableWindTurbine

--- 
---@class Satis.FGBuildableWire : Satis.Buildable
local FGBuildableWire

--- 
---@class Satis.FGCentralStorageContainer : Satis.FGBuildableStorage
local FGCentralStorageContainer

--- 
---@class Satis.FGConveyorPoleStackable : Satis.FGBuildablePole
local FGConveyorPoleStackable

--- A struct that holds information about a recipe in its class. Means don't use it as object, use it as class type!
---@class Satis.Recipe : Object
local Recipe

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
Recipe.name = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Recipe.duration = nil

--- A base class for all vehciles.
---@class Satis.Vehicle : Actor
local Vehicle

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Vehicle.health = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Vehicle.maxHealth = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
Vehicle.isSelfDriving = nil

--- A actor component that is a connection point to which a conveyor or pipe can get attached to.
---@class Satis.FactoryConnection : ActorComponent
local FactoryConnection

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
FactoryConnection.type = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
FactoryConnection.direction = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
FactoryConnection.isConnected = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Satis.ItemType
FactoryConnection.allowedItem = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
FactoryConnection.blocked = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
FactoryConnection.unblockedTransfers = nil

--- Adds the given count to the unblocked transfers counter. The resulting value gets clamped to >= 0. Negative values allow to decrease the counter manually. The returning int is the now set count.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param unblockedTransfers number @The count of unblocked transfers to add.
---@return number
function FactoryConnection:addUnblockedTransfers(unblockedTransfers) end

--- Returns the internal inventory of the connection component.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory
function FactoryConnection:getInventory() end

--- Returns the connected factory connection component.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.FactoryConnection
function FactoryConnection:getConnected() end

--- Triggers when the factory connection component transfers an item.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Item = event.pull()
--- ```
--- - `signalName: "ItemTransfer"`
--- - `component: FactoryConnection`
--- - `Item: Satis.Item` <br>
--- The transfered item
---@deprecated
---@type FIN.Signal
FactoryConnection.ItemTransfer = { isVarArgs = false }

--- The base class for any vehicle that drives on train tracks.
---@class Satis.RailroadVehicle : Satis.Vehicle
local RailroadVehicle

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicle.length = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadVehicle.isDocked = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadVehicle.isReversed = nil

--- Returns the train of which this vehicle is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Train
function RailroadVehicle:getTrain() end

--- Allows to check if the given coupler is coupled to another car.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param coupler number @The Coupler you want to check. 0 = Front, 1 = Back
---@return boolean
function RailroadVehicle:isCoupled(coupler) end

--- Allows to get the coupled vehicle at the given coupler.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param coupler number @The Coupler you want to get the car from. 0 = Front, 1 = Back
---@return Satis.RailroadVehicle
function RailroadVehicle:getCoupled(coupler) end

--- Returns the track graph of which this vehicle is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.TrackGraph
function RailroadVehicle:getTrackGraph() end

--- Returns the track pos at which this vehicle is.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrack,number,number
function RailroadVehicle:getTrackPos() end

--- Returns the vehicle movement of this vehicle.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicleMovement
function RailroadVehicle:getMovement() end

--- A actor component that can hold multiple item stacks.<br>
--- WARNING! Be aware of container inventories, and never open their UI, otherwise these function will not work as expected.
---@class Satis.Inventory : ActorComponent
local Inventory

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Inventory.itemCount = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Inventory.size = nil

--- Returns the item stack at the given index.<br>
--- Takes integers as input and returns the corresponding stacks.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Variable Arguments - Can have any additional arguments as described.
function Inventory:getStack() end

--- Sorts the whole inventory. (like the middle mouse click into a inventory)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function Inventory:sort() end

--- Swaps two given stacks inside the inventory.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index1 number @The index of the first stack in the inventory.
---@param index2 number @The index of the second stack in the inventory.
---@return boolean
function Inventory:swapStacks(index1, index2) end

--- Removes all discardable items from the inventory completely. They will be gone! No way to get them back!
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
function Inventory:flush() end

--- The category of some items.
---@class Satis.ItemCategory : Object
local ItemCategory

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
ItemCategory.name = nil

--- This actor component contains all the infomation about the movement of a railroad vehicle.
---@class Satis.RailroadVehicleMovement : ActorComponent
local RailroadVehicleMovement

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.orientation = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.mass = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.tareMass = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.payloadMass = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.speed = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.relativeSpeed = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.maxSpeed = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.gravitationalForce = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.tractiveForce = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.resistiveForce = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.gradientForce = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.brakingForce = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.airBrakingForce = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.dynamicBrakingForce = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.maxTractiveEffort = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.maxDynamicBrakingEffort = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.maxAirBrakingEffort = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.trackGrade = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.trackCurvature = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.wheelsetAngle = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.rollingResistance = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.curvatureResistance = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.airResistance = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.gradientResistance = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.wheelRotation = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadVehicleMovement.numWheelsets = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadVehicleMovement.isMoving = nil

--- Returns the vehicle this movement component holds the movement information of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle
function RailroadVehicleMovement:getVehicle() end

--- Returns the current rotation of the given wheelset.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param wheelset number @The index of the wheelset you want to get the rotation of.
---@return number,number,number
function RailroadVehicleMovement:getWheelsetRotation(wheelset) end

--- Returns the offset of the wheelset with the given index from the start of the vehicle.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param wheelset number @The index of the wheelset you want to get the offset of.
---@return number
function RailroadVehicleMovement:getWheelsetOffset(wheelset) end

--- Returns the normal vector and the extention of the coupler with the given index.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param coupler number @The index of which you want to get the normal and extention of.
---@return number,number,number,number
function RailroadVehicleMovement:getCouplerRotationAndExtention(coupler) end

--- A actor component base that is a connection point to which a pipe for fluid or hyper can get attached to.
---@class Satis.PipeConnectionBase : ActorComponent
local PipeConnectionBase

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
PipeConnectionBase.isConnected = nil

--- Returns the connected pipe connection component.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.PipeConnectionBase
function PipeConnectionBase:getConnection() end

--- A actor component that is a connection point to which a fluid pipe can get attached to.
---@class Satis.PipeConnection : Satis.PipeConnectionBase
local PipeConnection

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.fluidBoxContent = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.fluidBoxHeight = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.fluidBoxLaminarHeight = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.fluidBoxFlowThrough = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.fluidBoxFlowFill = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.fluidBoxFlowDrain = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.fluidBoxFlowLimit = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PipeConnection.networkID = nil

--- ?
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.ItemType
function PipeConnection:getFluidDescriptor() end

--- Flush the associated pipe network
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function PipeConnection:flushPipeNetwork() end

--- A actor that is a hypertube entrance buildable
---@class Satis.PipeHyperStart : Satis.FGBuildablePipeHyperPart
local PipeHyperStart

--- Triggers when a players enters into this hypertube entrance.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Sucess = event.pull()
--- ```
--- - `signalName: "PlayerEntered"`
--- - `component: PipeHyperStart`
--- - `Sucess: boolean` <br>
--- True if the transfer was sucessfull
---@deprecated
---@type FIN.Signal
PipeHyperStart.PlayerEntered = { isVarArgs = false }

--- Triggers when a players leaves through this hypertube entrance.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "PlayerExited"`
--- - `component: PipeHyperStart`
---@deprecated
---@type FIN.Signal
PipeHyperStart.PlayerExited = { isVarArgs = false }

--- A Object that represents a whole power circuit.
---@class Satis.PowerCircuit : Object
local PowerCircuit

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.production = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.consumption = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.capacity = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryInput = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.maxPowerConsumption = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
PowerCircuit.isFuesed = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
PowerCircuit.hasBatteries = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryCapacity = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryStore = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryStorePercent = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryTimeUntilFull = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryTimeUntilEmpty = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryIn = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerCircuit.batteryOut = nil

--- Get Triggered when the fuse state of the power circuit changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "PowerFuseChanged"`
--- - `component: PowerCircuit`
---@deprecated
---@type FIN.Signal
PowerCircuit.PowerFuseChanged = { isVarArgs = false }

--- A actor component that allows for a connection point to the power network. Basically a point were a power cable can get attached to.
---@class Satis.PowerConnection : ActorComponent
local PowerConnection

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerConnection.connections = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerConnection.maxConnections = nil

--- Returns the power info component of this power connection.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.PowerInfo
function PowerConnection:getPower() end

--- Returns the power circuit to which this connection component is attached to.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.PowerCircuit
function PowerConnection:getCircuit() end

--- A actor component that provides information and mainly statistics about the power connection it is attached to.
---@class Satis.PowerInfo : ActorComponent
local PowerInfo

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerInfo.dynProduction = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerInfo.baseProduction = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerInfo.maxDynProduction = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerInfo.targetConsumption = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
PowerInfo.consumption = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
PowerInfo.hasPower = nil

--- Returns the power circuit this info component is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.PowerCircuit
function PowerInfo:getCircuit() end

--- Contains the time table information of train.
---@class Satis.TimeTable : Actor
local TimeTable

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
TimeTable.numStops = nil

--- Adds a stop to the time table.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index at which the stop should get added.
---@param station Satis.RailroadStation @The railroad station at which the stop should happen.
---@param ruleSet Satis.TrainDockingRuleSet @The docking rule set that descibes when the train will depart from the station.
---@return boolean
function TimeTable:addStop(index, station, ruleSet) end

--- Removes the stop with the given index from the time table.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index at which the stop should get added.
function TimeTable:removeStop(index) end

--- Returns a list of all the stops this time table has
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.TimeTableStop[]
function TimeTable:getStops() end

--- Allows to empty and fill the stops of this time table with the given list of new stops.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return boolean
function TimeTable:setStops() end

--- Allows to check if the given stop index is valid.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The stop index you want to check its validity.
---@return boolean
function TimeTable:isValidStop(index) end

--- Returns the stop at the given index.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index of the stop you want to get.
---@return FIN.TimeTableStop
function TimeTable:getStop(index) end

--- Allows to override a stop already in the time table.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index of the stop you want to override.
---@param stop FIN.TimeTableStop @The time table stop you want to override with.
---@return boolean
function TimeTable:setStop(index, stop) end

--- Sets the stop, to which the train trys to drive to right now.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index of the stop the train should drive to right now.
function TimeTable:setCurrentStop(index) end

--- Sets the current stop to the next stop in the time table.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function TimeTable:incrementCurrentStop() end

--- Returns the index of the stop the train drives to right now.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function TimeTable:getCurrentStop() end

--- This is a actor component for railroad tracks that allows to connecto to other track connections and so to connection multiple tracks with each eather so you can build a train network.
---@class Satis.RailroadTrackConnection : ActorComponent
local RailroadTrackConnection

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Vector
RailroadTrackConnection.connectorLocation = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Vector
RailroadTrackConnection.connectorNormal = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadTrackConnection.isConnected = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadTrackConnection.isFacingSwitch = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadTrackConnection.isTrailingSwitch = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadTrackConnection.numSwitchPositions = nil

--- Returns the connected connection with the given index.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index of the connected connection you want to get.
---@return Satis.RailroadTrackConnection
function RailroadTrackConnection:getConnection(index) end

--- Returns a list of all connected connections.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrackConnection[]
function RailroadTrackConnection:getConnections() end

--- Returns the track pos at which this connection is.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrack,number,number
function RailroadTrackConnection:getTrackPos() end

--- Returns the track of which this connection is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrack
function RailroadTrackConnection:getTrack() end

--- Returns the switch control of this connection.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadSwitchControl
function RailroadTrackConnection:getSwitchControl() end

--- Returns the station of which this connection is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadStation
function RailroadTrackConnection:getStation() end

--- Returns the signal this connection is facing to.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadSignal
function RailroadTrackConnection:getFacingSignal() end

--- Returns the signal this connection is trailing from.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadSignal
function RailroadTrackConnection:getTrailingSignal() end

--- Returns the opposite connection of the track this connection is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrackConnection
function RailroadTrackConnection:getOpposite() end

--- Returns the next connection in the direction of the track. (used the correct path switched point to)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadTrackConnection
function RailroadTrackConnection:getNext() end

--- Sets the position (connection index) to which the track switch points to.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The connection index to which the switch should point to.
function RailroadTrackConnection:setSwitchPosition(index) end

--- Returns the current switch position.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function RailroadTrackConnection:getSwitchPosition() end

--- Forces the switch position to a given location. Even autopilot will be forced to use this track. A negative number can be used to remove the forced track.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param index number @The connection index to whcih the switch should be force to point to. Negative number to remove the lock.
function RailroadTrackConnection:forceSwitchPosition(index) end

--- Describes the type of a sign.
---@class Satis.SignType : Object
local SignType

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type Vector2D
SignType.dimensions = nil

--- Descibes a layout of a sign.
---@class Satis.SignPrefab : Object
local SignPrefab

--- The list of targets/path-waypoints a autonomous vehicle can drive
---@class Satis.TargetList : Actor
local TargetList

--- Returns the target struct at with the given index in the target list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.TargetPoint
function TargetList:getTarget() end

--- Removes the target with the given index from the target list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index of the target point you want to remove from the target list.
function TargetList:removeTarget(index) end

--- Adds the given target point struct at the end of the target list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param target FIN.TargetPoint @The target point you want to add.
function TargetList:addTarget(target) end

--- Allows to set the target at the given index to the given target point struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index of the target point you want to update with the given target point struct.
---@param target FIN.TargetPoint @The new target point struct for the given index.
function TargetList:setTarget(index, target) end

--- Returns a list of target point structs of all the targets in the target point list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.TargetPoint[]
function TargetList:getTargets() end

--- Removes all targets from the target point list and adds the given array of target point structs to the empty target point list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param targets FIN.TargetPoint[] @A list of target point structs you want to place into the empty target point list.
function TargetList:setTargets(targets) end

--- This class holds information and references about a trains (a collection of multiple railroad vehicles) and its timetable f.e.
---@class Satis.Train : Actor
local Train

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
Train.isPlayerDriven = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
Train.isSelfDriving = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Train.selfDrivingError = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
Train.hasTimeTable = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Train.dockState = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
Train.isDocked = nil

--- Returns the name of this train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return string
function Train:getName() end

--- Allows to set the name of this train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param name string @The new name of this trian.
function Train:setName(name) end

--- Returns the track graph of which this train is part of.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.TrackGraph
function Train:getTrackGraph() end

--- Allows to set if the train should be self driving or not.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param selfDriving boolean @True if the train should be self driving.
function Train:setSelfDriving(selfDriving) end

--- Returns the master locomotive that is part of this train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle
function Train:getMaster() end

--- Returns the timetable of this train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.TimeTable
function Train:getTimeTable() end

--- Creates and returns a new timetable for this train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.TimeTable
function Train:newTimeTable() end

--- Returns the first railroad vehicle that is part of this train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle
function Train:getFirst() end

--- Returns the last railroad vehicle that is part of this train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle
function Train:getLast() end

--- Trys to dock the train to the station it is currently at.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function Train:dock() end

--- Returns a list of all the vehicles this train has.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadVehicle[]
function Train:getVehicles() end

--- Triggers when the self driving mode of the train changes<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Enabled = event.pull()
--- ```
--- - `signalName: "SelfDrvingUpdate"`
--- - `component: Train`
--- - `Enabled: boolean` <br>
--- True if the train is now self driving.
---@deprecated
---@type FIN.Signal
Train.SelfDrvingUpdate = { isVarArgs = false }

--- The base class for all vehicles that used wheels for movement.
---@class Satis.WheeledVehicle : Satis.Vehicle
local WheeledVehicle

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
WheeledVehicle.speed = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
WheeledVehicle.burnRatio = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
WheeledVehicle.hasFuel = nil

--- Returns the inventory that contains the fuel of the vehicle.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory
function WheeledVehicle:getFuelInv() end

--- Returns the inventory that contains the storage of the vehicle.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Inventory
function WheeledVehicle:getStorageInv() end

--- Allows to check if the given item type is a valid fuel for this vehicle.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param item Satis.ItemType @The item type you want to check.
---@return boolean
function WheeledVehicle:isValidFuel(item) end

--- Returns the index of the target that the vehicle tries to move to right now.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function WheeledVehicle:getCurrentTarget() end

--- Sets the current target to the next target in the list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function WheeledVehicle:nextTarget() end

--- Sets the target with the given index as the target this vehicle tries to move to right now.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param index number @The index of the target this vehicle should move to now.
function WheeledVehicle:setCurrentTarget(index) end

--- Returns the list of targets/path waypoints.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.TargetList
function WheeledVehicle:getTargetList() end

--- 
---@class FIN.FINAdvancedNetworkConnectionComponent : ActorComponent
local FINAdvancedNetworkConnectionComponent

--- <br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, changeType, ChangedComponent = event.pull()
--- ```
--- - `signalName: "NetworkUpdate"`
--- - `component: FINAdvancedNetworkConnectionComponent`
--- - `changeType: number` <br>
--- 
--- - `ChangedComponent: string` <br>
--- 
---@deprecated
---@type FIN.Signal
FINAdvancedNetworkConnectionComponent.NetworkUpdate = { isVarArgs = false }

--- The base class for all things of the reflection system.
---@class FIN.ReflectionBase : Object
local ReflectionBase

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
ReflectionBase.name = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
ReflectionBase.displayName = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
ReflectionBase.description = nil

--- A Reflection object that holds information about properties and parameters.
---@class FIN.Property : FIN.ReflectionBase
local Property

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Property.dataType = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Property.flags = nil

--- A reflection object representing a array property.
---@class FIN.ArrayProperty : FIN.Property
local ArrayProperty

--- Returns the inner type of this array.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Property
function ArrayProperty:getInner() end

--- Reflection Object that holds information about structures.
---@class FIN.Struct : FIN.ReflectionBase
local Struct

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
Struct.isConstructable = nil

--- Returns the parent type of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@return FIN.Class
function Struct:getParent() end

--- Returns all the properties of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Property[]
function Struct:getProperties() end

--- Returns all the properties of this and parent types.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Property[]
function Struct:getAllProperties() end

--- Returns all the functions of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Function[]
function Struct:getFunctions() end

--- Returns all the functions of this and parent types.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Property[]
function Struct:getAllFunctions() end

--- Allows to check if this struct is a child struct of the given struct or the given struct it self.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param parent FIN.Struct @The parent struct you want to check if this struct is a child of.
---@return boolean
function Struct:isChildOf(parent) end

--- Object that contains all information about a type.
---@class FIN.Class : FIN.Struct
local Class

--- Returns all the signals of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Signal[]
function Class:getSignals() end

--- Returns all the signals of this and its parent types.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Signal[]
function Class:getAllSignals() end

--- A reflection object representing a class property.
---@class FIN.ClassProperty : FIN.Property
local ClassProperty

--- Returns the subclass type of this class. Meaning, the stored classes need to be of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Class
function ClassProperty:getSubclass() end

--- 
---@class FIN.CodeableMerger : Satis.FGBuildableConveyorAttachment
local CodeableMerger

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
CodeableMerger.canOutput = nil

--- Allows to transfer an item from the given input queue to the output queue if possible.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param input number @The index of the input queue you want to transfer the next item to the output queue. (0 = right, 1 = middle, 2 = left)
---@return boolean
function CodeableMerger:transferItem(input) end

--- Returns the next item in the given input queue.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param input number @The index of the input queue you want to check (0 = right, 1 = middle, 2 = left)
---@return Satis.Item
function CodeableMerger:getInput(input) end

--- Triggers when a new item is ready in one of the input queues.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Input, Item = event.pull()
--- ```
--- - `signalName: "ItemRequest"`
--- - `component: CodeableMerger`
--- - `Input: number` <br>
--- The index of the input queue at which the item is ready.
--- - `Item: Satis.Item` <br>
--- The new item in the input queue.
---@deprecated
---@type FIN.Signal
CodeableMerger.ItemRequest = { isVarArgs = false }

--- Triggers when an item is popped from the output queue (aka it got transferred to a conveyor).<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Item = event.pull()
--- ```
--- - `signalName: "ItemOutputted"`
--- - `component: CodeableMerger`
--- - `Item: Satis.Item` <br>
--- The item removed from the output queue.
---@deprecated
---@type FIN.Signal
CodeableMerger.ItemOutputted = { isVarArgs = false }

--- 
---@class FIN.CodeableSplitter : Satis.FGBuildableConveyorAttachment
local CodeableSplitter

--- Allows to transfer an item from the input queue to the given output queue if possible.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param output number @The index of the output queue you want to transfer the next item to (0 = left, 1 = middle, 2 = right)
---@return boolean
function CodeableSplitter:transferItem(output) end

--- Returns the next item in the input queue.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Item
function CodeableSplitter:getInput() end

--- Allows to check if we can transfer an item to the given output queue.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param output number @The index of the output queue you want to check (0 = left, 1 = middle, 2 = right)
---@return boolean
function CodeableSplitter:canOutput(output) end

--- Triggers when a new item is ready in the input queue.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Item = event.pull()
--- ```
--- - `signalName: "ItemRequest"`
--- - `component: CodeableSplitter`
--- - `Item: Satis.Item` <br>
--- The new item in the input queue.
---@deprecated
---@type FIN.Signal
CodeableSplitter.ItemRequest = { isVarArgs = false }

--- Triggers when an item is popped from on of the output queues (aka it got transferred to a conveyor).<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Output, Item = event.pull()
--- ```
--- - `signalName: "ItemOutputted"`
--- - `component: CodeableSplitter`
--- - `Output: number` <br>
--- The index of the output queue from which the item got removed.
--- - `Item: Satis.Item` <br>
--- The item removed from the output queue.
---@deprecated
---@type FIN.Signal
CodeableSplitter.ItemOutputted = { isVarArgs = false }

--- 
---@class FIN.ComputerCase : Satis.Buildable
local ComputerCase

--- Stops the Computer (Processor).
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
function ComputerCase:stopComputer() end

--- Starts the Computer (Processor).
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
function ComputerCase:startComputer() end

--- Returns the internal kernel state of the computer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function ComputerCase:getState() end

--- Returns the log of the computer. Output is paginated using the input parameters. A negative Page will indicate pagination from the bottom (latest log entry first).
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param pageSize number @The size of the returned page.
---@param page number @The index of the page you want to return. Negative to start indexing at the bottom (latest entries first).
---@return FIN.LogEntry[],number
function ComputerCase:getLog(pageSize, page) end

--- Triggers when something in the filesystem changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Type, From, To = event.pull()
--- ```
--- - `signalName: "FileSystemUpdate"`
--- - `component: ComputerCase`
--- - `Type: number` <br>
--- The type of the change.
--- - `From: string` <br>
--- The file path to the FS node that has changed.
--- - `To: string` <br>
--- The new file path of the node if it has changed.
---@deprecated
---@type FIN.Signal
ComputerCase.FileSystemUpdate = { isVarArgs = false }

--- Triggers when the computers state changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, PreviousState, NewState = event.pull()
--- ```
--- - `signalName: "ComputerStateChanged"`
--- - `component: ComputerCase`
--- - `PreviousState: number` <br>
--- The previous computer state.
--- - `NewState: number` <br>
--- The new computer state.
---@deprecated
---@type FIN.Signal
ComputerCase.ComputerStateChanged = { isVarArgs = false }

--- 
---@class FIN.FINComputerModule : Satis.Buildable
local FINComputerModule

--- 
---@class FIN.FINComputerDriveHolder : FIN.FINComputerModule
local FINComputerDriveHolder

--- 
---@class FIN.FINComputerGPU : FIN.FINComputerModule
local FINComputerGPU

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Vector2D
function FINComputerGPU:getScreenSize() end

--- Binds this GPU to the given screen. Unbinds the already bound screen.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param newScreen Object @The screen you want to bind this GPU to. Null if you want to unbind the screen.
function FINComputerGPU:bindScreen(newScreen) end

--- <br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, oldScreen = event.pull()
--- ```
--- - `signalName: "ScreenBound"`
--- - `component: FINComputerGPU`
--- - `oldScreen: Object` <br>
--- 
---@deprecated
---@type FIN.Signal
FINComputerGPU.ScreenBound = { isVarArgs = false }

--- 
---@class FIN.GPUT1 : FIN.FINComputerGPU
local GPUT1

--- Draws the given text at the given position to the hidden screen buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x number @The x coordinate at which the text should get drawn.
---@param y number @The y coordinate at which the text should get drawn.
---@param str string @The text you want to draw on-to the buffer.
function GPUT1:setText(x, y, str) end

--- Changes the size of the text-grid (and buffer).
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param w number @The width of the text-gird.
---@param h number @The height of the text-grid.
function GPUT1:setSize(w, h) end

--- Changes the foreground color that is used for the next draw calls.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param r number @The red portion of the foreground color. (0.0 - 1.0)
---@param g number @The green portion of the foreground color. (0.0 - 1.0)
---@param b number @The blue portion of the foreground color. (0.0 - 1.0)
---@param a number @The opacity of the foreground color. (0.0 - 1.0)
function GPUT1:setForeground(r, g, b, a) end

--- Allows to change the back buffer of the GPU to the given buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param buffer FIN.GPUT1Buffer @The Buffer you want to now use as back buffer.
function GPUT1:setBuffer(buffer) end

--- Changes the background color that is used for the next draw calls.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param r number @The red portion of the background color. (0.0 - 1.0)
---@param g number @The green portion of the background color. (0.0 - 1.0)
---@param b number @The blue portion of the background color. (0.0 - 1.0)
---@param a number @The opacity of the background color. (0.0 - 1.0)
function GPUT1:setBackground(r, g, b, a) end

--- Returns the size of the text-grid (and buffer).
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number,number
function GPUT1:getSize() end

--- Returns the currently bound screen.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Object
function GPUT1:getScreen() end

--- Returns the back buffer as struct to be able to use advanced buffer handling functions. (struct is a copy)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@return FIN.GPUT1Buffer
function GPUT1:getBuffer() end

--- Flushes the hidden screen buffer to the visible screen buffer and so makes the draw calls visible.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function GPUT1:flush() end

--- Draws the given character at all given positions in the given rectangle on-to the hidden screen buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x number @The x coordinate at which the rectangle should get drawn. (upper-left corner)
---@param y number @The y coordinate at which the rectangle should get drawn. (upper-left corner)
---@param dx number @The width of the rectangle.
---@param dy number @The height of the rectangle.
---@param str string @The character you want to use for the rectangle. (first char in the given string)
function GPUT1:fill(x, y, dx, dy, str) end

--- Triggers when the size of the text grid changed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, oldWidth, oldHeight = event.pull()
--- ```
--- - `signalName: "ScreenSizeChanged"`
--- - `component: GPUT1`
--- - `oldWidth: number` <br>
--- The old width of the screen.
--- - `oldHeight: number` <br>
--- The old height of the screen.
---@deprecated
---@type FIN.Signal
GPUT1.ScreenSizeChanged = { isVarArgs = false }

--- Triggers when a mouse button got released.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, X, Y, Button = event.pull()
--- ```
--- - `signalName: "OnMouseUp"`
--- - `component: GPUT1`
--- - `X: number` <br>
--- The x position of the cursor.
--- - `Y: number` <br>
--- The y position of the cursor.
--- - `Button: number` <br>
--- The Button-Bit-Field providing information about the released button event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
GPUT1.OnMouseUp = { isVarArgs = false }

--- Triggers when the mouse cursor moves on the screen.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, X, Y, Button = event.pull()
--- ```
--- - `signalName: "OnMouseMove"`
--- - `component: GPUT1`
--- - `X: number` <br>
--- The x position of the cursor.
--- - `Y: number` <br>
--- The y position of the cursor.
--- - `Button: number` <br>
--- The Button-Bit-Field providing information about the move event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
GPUT1.OnMouseMove = { isVarArgs = false }

--- Triggers when a mouse button got pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, X, Y, Button = event.pull()
--- ```
--- - `signalName: "OnMouseDown"`
--- - `component: GPUT1`
--- - `X: number` <br>
--- The x position of the cursor.
--- - `Y: number` <br>
--- The y position of the cursor.
--- - `Button: number` <br>
--- The Button-Bit-Field providing information about the pressed button event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
GPUT1.OnMouseDown = { isVarArgs = false }

--- Triggers when a key got released.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, C, Code, Button = event.pull()
--- ```
--- - `signalName: "OnKeyUp"`
--- - `component: GPUT1`
--- - `C: number` <br>
--- The ASCII number of the character typed in.
--- - `Code: number` <br>
--- The number code of the pressed key.
--- - `Button: number` <br>
--- The Button-Bit-Field providing information about the key release event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
GPUT1.OnKeyUp = { isVarArgs = false }

--- Triggers when a key got pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, C, Code, Button = event.pull()
--- ```
--- - `signalName: "OnKeyDown"`
--- - `component: GPUT1`
--- - `C: number` <br>
--- The ASCII number of the character typed in.
--- - `Code: number` <br>
--- The number code of the pressed key.
--- - `Button: number` <br>
--- The Button-Bit-Field providing information about the key press event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
GPUT1.OnKeyDown = { isVarArgs = false }

--- Triggers when a character key got 'clicked' and essentially a character got typed in, usful for text input.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Character, Button = event.pull()
--- ```
--- - `signalName: "OnKeyChar"`
--- - `component: GPUT1`
--- - `Character: string` <br>
--- The character that got typed in as string.
--- - `Button: number` <br>
--- The Button-Bit-Field providing information about the key release event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
GPUT1.OnKeyChar = { isVarArgs = false }

--- 
---@class FIN.FINComputerGPUT2 : FIN.FINComputerGPU
local FINComputerGPUT2

--- Pushes a transformation to the geometry stack. All subsequent drawcalls will be transformed through all previously pushed geometries and this one. Be aware, only all draw calls till, this geometry gets pop'ed are transformed, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param translation Vector2D @The local translation that is supposed to happen to all further drawcalls. Translation can be also thought as 'repositioning'.
---@param rotation number @The local rotation that gets applied to all subsequent draw calls. The origin of the rotation is the whole screens center point. The value is in degrees.
---@param scale Vector2D @The scale that gets applied to the whole screen localy along the (rotated) axis. No change in scale is (1,1).
function FINComputerGPUT2:pushTransform(translation, rotation, scale) end

--- Pushes a layout to the geometry stack. All subsequent drawcalls will be transformed through all previously pushed geometries and this one. Be aware, only all draw calls, till this geometry gets pop'ed are transformed, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param offset Vector2D @The local translation (or offset) that is supposed to happen to all further drawcalls. Translation can be also thought as 'repositioning'.
---@param size Vector2D @The scale that gets applied to the whole screen localy along both axis. No change in scale is 1.
---@param scale number @
function FINComputerGPUT2:pushLayout(offset, size, scale) end

--- Pushes a rectangle to the clipping stack. All subsequent drawcalls will be clipped to only be visible within this clipping zone and all previously pushed clipping zones. Be aware, only all draw calls, till this clipping zone gets pop'ed are getting clipped by it, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param position Vector2D @The local position of the upper left corner of the clipping rectangle.
---@param size Vector2D @The size of the clipping rectangle.
function FINComputerGPUT2:pushClipRect(position, size) end

--- Pushes a 4 pointed polygon to the clipping stack. All subsequent drawcalls will be clipped to only be visible within this clipping zone and all previously pushed clipping zones. Be aware, only all draw calls, till this clipping zone gets pop'ed are getting clipped by it, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param topLeft Vector2D @The local position of the top left point.
---@param topRight Vector2D @The local position of the top right point.
---@param bottomLeft Vector2D @The local position of the top right point.
---@param bottomRight Vector2D @The local position of the bottom right point.
function FINComputerGPUT2:pushClipPolygon(topLeft, topRight, bottomLeft, bottomRight) end

--- Pops the top most geometry from the geometry stack. The latest geometry on the stack gets removed first. (Last In, First Out)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
function FINComputerGPUT2:popGeometry() end

--- Pops the top most clipping zone from the clipping stack. The latest clipping zone on the stack gets removed first. (Last In, First Out)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
function FINComputerGPUT2:popClip() end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param Text string @
---@param Size number @
---@param bMonospace boolean @
---@return Vector2D
function FINComputerGPUT2:measureText(Text, Size, bMonospace) end

--- Flushes all draw calls to the visible draw call buffer to show all changes at once. The draw buffer gets cleared afterwards.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function FINComputerGPUT2:flush() end

--- Draws some Text at the given position (top left corner of the text), text, size, color and rotation.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param position Vector2D @The position of the top left corner of the text.
---@param text string @The text to draw.
---@param size number @The font size used.
---@param color Color @The color of the text.
---@param monospace boolean @True if a monospace font should be used.
function FINComputerGPUT2:drawText(position, text, size, color, monospace) end

--- Draws a Spline from one position to another with given directions, thickness and color.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param start Vector2D @The local position of the start point of the spline.
---@param startDirections Vector2D @The direction of the spline of how it exists the start point.
---@param end Vector2D @The local position of the end point of the spline.
---@param endDirection Vector2D @The direction of how the spline enters the end position.
---@param thickness number @The thickness of the line drawn.
---@param color Color @The color of the line drawn.
function FINComputerGPUT2:drawSpline(start, startDirections, end, endDirection, thickness, color) end

--- Draws a Rectangle with the upper left corner at the given local position, size, color and rotation around the upper left corner.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param position Vector2D @The local position of the upper left corner of the rectangle.
---@param size Vector2D @The size of the rectangle.
---@param color Color @The color of the rectangle.
---@param image string @If not empty string, should be image reference that should be placed inside the rectangle.
---@param rotation number @The rotation of the rectangle around the upper left corner in degrees.
function FINComputerGPUT2:drawRect(position, size, color, image, rotation) end

--- Draws connected lines through all given points with the given thickness and color.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param points Vector2D[] @The local points that get connected by lines one after the other.
---@param thickness number @The thickness of the lines.
---@param color Color @The color of the lines.
function FINComputerGPUT2:drawLines(points, thickness, color) end

--- Draws a box.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param boxSettings FIN.GPUT2DrawCallBox @The settings of the box you want to draw.
function FINComputerGPUT2:drawBox(boxSettings) end

--- Draws a Cubic Bezier Spline from one position to another with given control points, thickness and color.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param p0 Vector2D @The local position of the start point of the spline.
---@param p1 Vector2D @The local position of the first control point.
---@param p2 Vector2D @The local position of the second control point.
---@param p3 Vector2D @The local position of the end point of the spline.
---@param thickness number @The thickness of the line drawn.
---@param color Color @The color of the line drawn.
function FINComputerGPUT2:drawBezier(p0, p1, p2, p3, thickness, color) end

--- Triggers when the mouse cursor moves on the screen.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Position, WheelDelta, Modifiers = event.pull()
--- ```
--- - `signalName: "OnMouseMove"`
--- - `component: FINComputerGPUT2`
--- - `Position: Vector2D` <br>
--- The position of the cursor.
--- - `WheelDelta: number` <br>
--- The delta value of how much the mouse wheel got moved.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the move event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnMouseMove = { isVarArgs = false }

--- Triggers when a mouse button got released.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Position, Modifiers = event.pull()
--- ```
--- - `signalName: "OnMouseUp"`
--- - `component: FINComputerGPUT2`
--- - `Position: Vector2D` <br>
--- The position of the cursor.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the released button event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnMouseUp = { isVarArgs = false }

--- Triggers when the mouse cursor moves on the screen.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Position, Modifiers = event.pull()
--- ```
--- - `signalName: "OnMouseMove"`
--- - `component: FINComputerGPUT2`
--- - `Position: Vector2D` <br>
--- The position of the cursor.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the move event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnMouseMove = { isVarArgs = false }

--- Triggers when the mouse cursor leaves the screen area.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Position, Modifiers = event.pull()
--- ```
--- - `signalName: "OnMouseLeave"`
--- - `component: FINComputerGPUT2`
--- - `Position: Vector2D` <br>
--- The position of the cursor.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the move event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnMouseLeave = { isVarArgs = false }

--- Triggers when the mouse cursor enters the screen area.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Position, Modifiers = event.pull()
--- ```
--- - `signalName: "OnMouseEnter"`
--- - `component: FINComputerGPUT2`
--- - `Position: Vector2D` <br>
--- The position of the cursor.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the move event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnMouseEnter = { isVarArgs = false }

--- Triggers when a mouse button got pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Position, Modifiers = event.pull()
--- ```
--- - `signalName: "OnMouseDown"`
--- - `component: FINComputerGPUT2`
--- - `Position: Vector2D` <br>
--- The position of the cursor.
--- - `Modifiers: number` <br>
--- The Modifier-Bit-Field providing information about the pressed button event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnMouseDown = { isVarArgs = false }

--- Triggers when a key got released.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, C, Code, Modifiers = event.pull()
--- ```
--- - `signalName: "OnKeyUp"`
--- - `component: FINComputerGPUT2`
--- - `C: number` <br>
--- The ASCII number of the character typed in.
--- - `Code: number` <br>
--- The number code of the pressed key.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the key release event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnKeyUp = { isVarArgs = false }

--- Triggers when a key got pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, C, Code, Modifiers = event.pull()
--- ```
--- - `signalName: "OnKeyDown"`
--- - `component: FINComputerGPUT2`
--- - `C: number` <br>
--- The ASCII number of the character typed in.
--- - `Code: number` <br>
--- The number code of the pressed key.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the key press event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnKeyDown = { isVarArgs = false }

--- Triggers when a character key got 'clicked' and essentially a character got typed in, usful for text input.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Character, Modifiers = event.pull()
--- ```
--- - `signalName: "OnKeyChar"`
--- - `component: FINComputerGPUT2`
--- - `Character: string` <br>
--- The character that got typed in as string.
--- - `Modifiers: number` <br>
--- The Modifiers-Bit-Field providing information about the key release event.<br>
--- Bits:<br>
--- 1th left mouse pressed<br>
--- 2th right mouse button pressed<br>
--- 3th ctrl key pressed<br>
--- 4th shift key pressed<br>
--- 5th alt key pressed<br>
--- 6th cmd key pressed
---@deprecated
---@type FIN.Signal
FINComputerGPUT2.OnKeyChar = { isVarArgs = false }

--- 
---@class FIN.FINComputerMemory : FIN.FINComputerModule
local FINComputerMemory

--- 
---@class FIN.NetworkCard : FIN.FINComputerModule
local NetworkCard

--- Sends a network message to the receiver with the given address on the given port. The data you want to add can be passed as additional parameters. Max amount of such parameters is 7 and they can only be nil, booleans, numbers and strings.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Variable Arguments - Can have any additional arguments as described.
---@param receiver string @The component ID as string of the component you want to send the network message to.
---@param port number @The port on which the network message should get sent. For outgoing network messages a port does not need to be opened.
function NetworkCard:send(receiver, port) end

--- Opens the given port so the network card is able to receive network messages on the given port.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param port number @The port you want to open.
function NetworkCard:open(port) end

--- Closes all ports of the network card so no further messages are able to get received
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function NetworkCard:closeAll() end

--- Closes the given port so the network card wont receive network messages on the given port.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param port number @The port you want to close.
function NetworkCard:close(port) end

--- Sends a network message to all components in the network message network (including networks sepperated by network routers) on the given port. The data you want to add can be passed as additional parameters. Max amount of such parameters is 7 and they can only be nil, booleans, numbers and strings.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Variable Arguments - Can have any additional arguments as described.
---@param port number @The port on which the network message should get sent. For outgoing network messages a port does not need to be opened.
function NetworkCard:broadcast(port) end

--- Triggers when the network card receives a network message on one of its opened ports. The additional arguments are the data that is contained within the network message.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Sender, Port, ... = event.pull()
--- ```
--- - `signalName: "NetworkMessage"`
--- - `component: NetworkCard`
--- - `Sender: string` <br>
--- The component id of the sender of the network message.
--- - `Port: number` <br>
--- The port on which the network message got sent.
---@deprecated
---@type FIN.Signal
NetworkCard.NetworkMessage = { isVarArgs = true }

--- 
---@class FIN.FINComputerProcessor : FIN.FINComputerModule
local FINComputerProcessor

--- 
---@class FIN.FINComputerScreen : FIN.FINComputerModule
local FINComputerScreen

--- A reflection object representing a function.
---@class FIN.Function : FIN.ReflectionBase
local Function

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
Function.flags = nil

--- Returns all the parameters of this function.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Property[]
function Function:getParameters() end

--- 
---@class FIN.IndicatorPole : Satis.Buildable
local IndicatorPole

--- Allows to change the color and light intensity of the indicator lamp.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param r number @The red part of the color in which the light glows. (0.0 - 1.0)
---@param g number @The green part of the color in which the light glows. (0.0 - 1.0)
---@param b number @The blue part of the color in which the light glows. (0.0 - 1.0)
---@param e number @The light intensity of the pole. (0.0 - 5.0)
function IndicatorPole:setColor(r, g, b, e) end

--- Allows to get the pole placed on top of this pole.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.IndicatorPole
function IndicatorPole:getTopPole() end

--- Allows to get the color and light intensity of the indicator lamp.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number,number,number,number
function IndicatorPole:getColor() end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.IndicatorPole
function IndicatorPole:getBottomPole() end

--- Triggers when the color of the indicator pole changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Red, Green, Blue, Emissive = event.pull()
--- ```
--- - `signalName: "ColorChanged"`
--- - `component: IndicatorPole`
--- - `Red: number` <br>
--- The red part of the color in which the light glows. (0.0 - 1.0)
--- - `Green: number` <br>
--- The green part of the color in which the light glows. (0.0 - 1.0)
--- - `Blue: number` <br>
--- The blue part of the color in which the light glows. (0.0 - 1.0)
--- - `Emissive: number` <br>
--- The light intensity of the pole. (0.0 - 5.0)
---@deprecated
---@type FIN.Signal
IndicatorPole.ColorChanged = { isVarArgs = false }

--- 
---@class FIN.FINInternetCard : FIN.FINComputerModule
local FINInternetCard

--- Does an HTTP-Request. If a payload is given, the Content-Type header has to be set. All additional parameters have to be strings and in pairs of two for defining the http headers and values.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Variable Arguments - Can have any additional arguments as described.
---@param url string @The URL for which you want to make an HTTP Request.
---@param method string @The http request method/verb you want to make the request. f.e. 'GET', 'POST'
---@param data string @The http request payload you want to sent.
---@return FIN.Future
function FINInternetCard:request(url, method, data) end

--- 
---@class FIN.FINMCPAdvConnector : FIN.FINAdvancedNetworkConnectionComponent
local FINMCPAdvConnector

--- 
---@class FIN.FINMediaSubsystem : Actor
local FINMediaSubsystem

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param TextureReference string @
function FINMediaSubsystem:loadTexture(TextureReference) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param TextureReference string @
---@return boolean
function FINMediaSubsystem:isTextureLoading(TextureReference) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param TextureReference string @
---@return boolean
function FINMediaSubsystem:isTextureLoaded(TextureReference) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param PageSize number @
---@param Page number @
---@return Satis.IconData[]
function FINMediaSubsystem:getGameIcons(PageSize, Page) end

--- Tries to find an game icon like the ones you use for signs.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param IconName string @
---@return Satis.IconData
function FINMediaSubsystem:findGameIcon(IconName) end

--- 
---@class FIN.ModularIndicatorPole : Satis.Buildable
local ModularIndicatorPole

--- Returns the next pole module if any.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Actor
function ModularIndicatorPole:getNext() end

--- Gets the module at the given position in the stack
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param module number @The module at the given offset in the stack or nil if none
---@return Actor
function ModularIndicatorPole:getModule(module) end

--- 
---@class FIN.FINModularIndicatorPoleModule : Satis.Buildable
local FINModularIndicatorPoleModule

--- Gets the previous module or the base mount if this called from the last module.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Buildable
function FINModularIndicatorPoleModule:getPrevious() end

--- Returns the next pole module if any.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.FINModularIndicatorPoleModule
function FINModularIndicatorPoleModule:getNext() end

--- 
---@class FIN.FINModuleBase : Satis.Buildable
local FINModuleBase

--- 
---@class FIN.FINModuleScreen : FIN.FINModuleBase
local FINModuleScreen

--- 
---@class FIN.FINNetworkAdapter : Satis.Buildable
local FINNetworkAdapter

--- 
---@class FIN.FINNetworkCable : Satis.Buildable
local FINNetworkCable

--- 
---@class FIN.NetworkRouter : Satis.Buildable
local NetworkRouter

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
NetworkRouter.isWhitelist = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
NetworkRouter.isAddrWhitelist = nil

--- Overrides the port filter list with the given array.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number[]
function NetworkRouter:setPortList() end

--- Overrides the address filter list with the given array.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return string[]
function NetworkRouter:setAddrList() end

--- Removes the given port from the port filter list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param port number @The port you want to remove from the list.
function NetworkRouter:removePortList(port) end

--- Removes the given address from the address filter list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param addr string @The address you want to remove from the list.
function NetworkRouter:removeAddrList(addr) end

--- Allows to get all the ports of the port filter list as array.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number[]
function NetworkRouter:getPortList() end

--- Allows to get all the addresses of the address filter list as array.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return string[]
function NetworkRouter:getAddrList() end

--- Adds a given port to the port filter list.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param port number @The port you want to add to the list.
function NetworkRouter:addPortList(port) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param addr string @
function NetworkRouter:addAddrList(addr) end

--- A reflection object representing a object property.
---@class FIN.ObjectProperty : FIN.Property
local ObjectProperty

--- Returns the subclass type of this object. Meaning, the stored objects need to be of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Class
function ObjectProperty:getSubclass() end

--- 
---@class FIN.Screen : Satis.Buildable
local Screen

--- Returns the size of the screen in 'panels'.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@return number,number
function Screen:getSize() end

--- A reflection object representing a signal.
---@class FIN.Signal : FIN.ReflectionBase
local Signal

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
Signal.isVarArgs = nil

--- Returns all the parameters of this signal.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Property[]
function Signal:getParameters() end

--- 
---@class FIN.FINSizeablePanel : Satis.Buildable
local FINSizeablePanel

--- This speaker pole allows to play custom sound files, In-Game
---@class FIN.SpeakerPole : Satis.Buildable
local SpeakerPole

--- Stops the currently playing sound file.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
function SpeakerPole:stopSound() end

--- Plays a custom sound file ingame
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param sound string @The sound file (without the file ending) you want to play
---@param startPoint number @The start point in seconds at which the system should start playing
function SpeakerPole:playSound(sound, startPoint) end

--- Triggers when the sound play state of the speaker pole changes.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Type, Sound = event.pull()
--- ```
--- - `signalName: "SpeakerSound"`
--- - `component: SpeakerPole`
--- - `Type: number` <br>
--- The type of the speaker pole event.
--- - `Sound: string` <br>
--- The sound file including in the event.
---@deprecated
---@type FIN.Signal
SpeakerPole.SpeakerSound = { isVarArgs = false }

--- A reflection object representing a struct property.
---@class FIN.StructProperty : FIN.Property
local StructProperty

--- Returns the subclass type of this struct. Meaning, the stored structs need to be of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Struct
function StructProperty:getSubclass() end

--- A reflection object representing a trace property.
---@class FIN.TraceProperty : FIN.Property
local TraceProperty

--- Returns the subclass type of this trace. Meaning, the stored traces need to be of this type.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Class
function TraceProperty:getSubclass() end

--- 
---@class FIN.VehicleScanner : Satis.Buildable
local VehicleScanner

--- Allows to change the color and light intensity of the scanner.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param r number @The red part of the color in which the scanner glows. (0.0 - 1.0)
---@param g number @The green part of the color in which the scanner glows. (0.0 - 1.0)
---@param b number @The blue part of the color in which the scanner glows. (0.0 - 1.0)
---@param e number @The light intensity of the scanner. (0.0 - 5.0)
function VehicleScanner:setColor(r, g, b, e) end

--- Returns the last vehicle that entered the scanner.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Vehicle
function VehicleScanner:getLastVehicle() end

--- Allows to get the color and light intensity of the scanner.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number,number,number,number
function VehicleScanner:getColor() end

--- Triggers when a vehicle leaves the scanner.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Vehicle = event.pull()
--- ```
--- - `signalName: "OnVehicleExit"`
--- - `component: VehicleScanner`
--- - `Vehicle: Satis.Vehicle` <br>
--- The vehicle that left the scanner.
---@deprecated
---@type FIN.Signal
VehicleScanner.OnVehicleExit = { isVarArgs = false }

--- Triggers when a vehicle enters the scanner.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Vehicle = event.pull()
--- ```
--- - `signalName: "OnVehicleEnter"`
--- - `component: VehicleScanner`
--- - `Vehicle: Satis.Vehicle` <br>
--- The vehicle that entered the scanner.
---@deprecated
---@type FIN.Signal
VehicleScanner.OnVehicleEnter = { isVarArgs = false }

--- 
---@class FIN.FINWirelessAccessPoint : Satis.Buildable
local FINWirelessAccessPoint

--- 
---@class FicsItNetworksLua.FINComputerProcessorLua : FIN.FINComputerProcessor
local FINComputerProcessorLua

--- See Display Name
---@class Satis.Buildable.Factory.BlueprintBuildable.Build_Blueprint.Build_Blueprint_C : Satis.Buildable
local Build_Blueprint_C

--- 
---@class Satis.Prototype.Buildable.Doors.Build_DoorMiddle.Build_DoorMiddle_C : Satis.FGBuildableWall
local Build_DoorMiddle_C

--- Drone Ports can have one other Port assigned as their transport destination.<br>
--- Each Drone Port can contain a single Drone, which transports available input back and forth between its home and destination Ports.<br>
--- <br>
--- The Drone Port interface provides delivery details and allows management of Port connections.
---@class Satis.Buildable.Factory.DroneStation.Build_DroneStation.Build_DroneStation_C : Satis.FGBuildableDroneStation
local Build_DroneStation_C

--- Blueprint Storage that parts are returned to when the Blueprint Designer is cleared.<br>
--- <br>
--- 40 slots.
---@class Satis.Buildable.Factory.StoragePlayer.Build_StorageBlueprint.Build_StorageBlueprint_C : Satis.FGBuildableStorage
local Build_StorageBlueprint_C

--- The Blueprint Designer is used to create custom factory designs and save them as Blueprints.<br>
--- Blueprints can be accessed from the Build Menu - Blueprint tab.<br>
--- <br>
--- Note that buildings can only be placed within the Blueprint Designer if they are fully within the boundary frame.<br>
--- <br>
--- Designer Dimensions: 32m x 32m x 32m
---@class Satis.Buildable.Factory.BlueprintDesigner.Build_BlueprintDesigner.Build_BlueprintDesigner_C : Satis.FGBuildableBlueprintDesigner
local Build_BlueprintDesigner_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Window_8x4_03.Build_Wall_Window_8x4_03_C : Satis.FGBuildableWallLightweight
local Build_Wall_Window_8x4_03_C

--- Has 2 Conveyor Belt connections.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Conveyor_8x4_02.Build_Wall_Conveyor_8x4_02_C : Satis.FGBuildableWall
local Build_Wall_Conveyor_8x4_02_C

--- Has 3 Conveyor Belt connections.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Conveyor_8x4_01.Build_Wall_Conveyor_8x4_01_C : Satis.FGBuildableWall
local Build_Wall_Conveyor_8x4_01_C

--- Has 1 Conveyor Belt connection.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Conveyor_8x4_03.Build_Wall_Conveyor_8x4_03_C : Satis.FGBuildableWall
local Build_Wall_Conveyor_8x4_03_C

--- 
---@class Satis.Buildable.Building.Doors.BUILD_SingleDoor_Base_01.BUILD_SingleDoor_Base_01_C : Satis.Door
local BUILD_SingleDoor_Base_01_C

--- Allows Pioneers to pass through the wall.<br>
--- Door settings can be configured.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Door_8x4_03.Build_Wall_Door_8x4_03_C : Satis.Buildable.Building.Doors.BUILD_SingleDoor_Base_01.BUILD_SingleDoor_Base_01_C
local Build_Wall_Door_8x4_03_C

--- Allows Pioneers to pass through the wall.<br>
--- Door settings can be configured.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Door_8x4_01.Build_Wall_Door_8x4_01_C : Satis.Buildable.Building.Doors.BUILD_SingleDoor_Base_01.BUILD_SingleDoor_Base_01_C
local Build_Wall_Door_8x4_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_Tris_8x8.Build_Wall_Orange_Tris_8x8_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_Tris_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_Tris_8x4.Build_Wall_Orange_Tris_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_Tris_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 2m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_Tris_8x2.Build_Wall_Orange_Tris_8x2_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_Tris_8x2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_Tris_8x1.Build_Wall_Orange_Tris_8x1_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_Tris_8x1_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_FlipTris_8x8.Build_Wall_Orange_FlipTris_8x8_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_FlipTris_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_FlipTris_8x4.Build_Wall_Orange_FlipTris_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_FlipTris_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 2m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_FlipTris_8x2.Build_Wall_Orange_FlipTris_8x2_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_FlipTris_8x2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_FlipTris_8x1.Build_Wall_Orange_FlipTris_8x1_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_FlipTris_8x1_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_8x4_Corner_01.Build_Wall_Orange_8x4_Corner_01_C : Satis.FGBuildableCornerWall
local Build_Wall_Orange_8x4_Corner_01_C

--- Allows Pioneers to pass through walls.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Gate_8x4_01.Build_Wall_Gate_8x4_01_C : Satis.FGBuildableWallLightweight
local Build_Wall_Gate_8x4_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_8x8_Corner_01.Build_Wall_Orange_8x8_Corner_01_C : Satis.FGBuildableCornerWall
local Build_Wall_Orange_8x8_Corner_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_8x4_Corner_02.Build_Wall_Orange_8x4_Corner_02_C : Satis.FGBuildableCornerWall
local Build_Wall_Orange_8x4_Corner_02_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Window_8x4_02.Build_Wall_Window_8x4_02_C : Satis.FGBuildableWallLightweight
local Build_Wall_Window_8x4_02_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Window_8x4_01.Build_Wall_Window_8x4_01_C : Satis.FGBuildableWallLightweight
local Build_Wall_Window_8x4_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_8x8_Corner_02.Build_Wall_Orange_8x8_Corner_02_C : Satis.FGBuildableCornerWall
local Build_Wall_Orange_8x8_Corner_02_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_Angular_8x4.Build_Wall_Orange_Angular_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_Angular_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_Angular_8x8.Build_Wall_Orange_Angular_8x8_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_Angular_8x8_C

--- Has 1 Conveyor Belt connection.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Conveyor_8x4_03_Steel.Build_Wall_Conveyor_8x4_03_Steel_C : Satis.FGBuildableWall
local Build_Wall_Conveyor_8x4_03_Steel_C

--- Has 2 Conveyor Belt connections.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Conveyor_8x4_02_Steel.Build_Wall_Conveyor_8x4_02_Steel_C : Satis.FGBuildableWall
local Build_Wall_Conveyor_8x4_02_Steel_C

--- Has 3 Conveyor Belt connections.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Conveyor_8x4_01_Steel.Build_Wall_Conveyor_8x4_01_Steel_C : Satis.FGBuildableWall
local Build_Wall_Conveyor_8x4_01_Steel_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Window_8x4_04.Build_Wall_Window_8x4_04_C : Satis.FGBuildableWallLightweight
local Build_Wall_Window_8x4_04_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.FicsitWallSet.Build_Wall_Orange_8x1.Build_Wall_Orange_8x1_C : Satis.FGBuildableWallLightweight
local Build_Wall_Orange_8x1_C

--- Has 3 Conveyor Belt connections.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_ConveyorHole_03.Build_Wall_Concrete_8x4_ConveyorHole_03_C : Satis.FGBuildableWall
local Build_Wall_Concrete_8x4_ConveyorHole_03_C

--- Has 2 Conveyor Belt connections.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_ConveyorHole_02.Build_Wall_Concrete_8x4_ConveyorHole_02_C : Satis.FGBuildableWall
local Build_Wall_Concrete_8x4_ConveyorHole_02_C

--- Has 1 Conveyor Belt connection.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_ConveyorHole_01.Build_Wall_Concrete_8x4_ConveyorHole_01_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_8x4_ConveyorHole_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4.Build_Wall_Concrete_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x1.Build_Wall_Concrete_8x1_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_8x1_C

--- Allows Pioneers to pass through the wall.<br>
--- Door settings can be configured.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_CDoor_8x4.Build_Wall_Concrete_CDoor_8x4_C : Satis.Buildable.Building.Doors.BUILD_SingleDoor_Base_01.BUILD_SingleDoor_Base_01_C
local Build_Wall_Concrete_CDoor_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_Angular_8x8.Build_Wall_Concrete_Angular_8x8_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_Angular_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x8_Corner_01.Build_Wall_Concrete_8x8_Corner_01_C : Satis.FGBuildableCornerWall
local Build_Wall_Concrete_8x8_Corner_01_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_Window_04.Build_Wall_Concrete_8x4_Window_04_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_8x4_Window_04_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_Window_03.Build_Wall_Concrete_8x4_Window_03_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_8x4_Window_03_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_Window_02.Build_Wall_Concrete_8x4_Window_02_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_8x4_Window_02_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_Window_01.Build_Wall_Concrete_8x4_Window_01_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_8x4_Window_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_Corner_01.Build_Wall_Concrete_8x4_Corner_01_C : Satis.FGBuildableCornerWall
local Build_Wall_Concrete_8x4_Corner_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_Tris_8x8.Build_SteelWall_Tris_8x8_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_Tris_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_Tris_8x4.Build_SteelWall_Tris_8x4_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_Tris_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 2m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_Tris_8x2.Build_SteelWall_Tris_8x2_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_Tris_8x2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_Tris_8x1.Build_SteelWall_Tris_8x1_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_Tris_8x1_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_FlipTris_8x8.Build_SteelWall_FlipTris_8x8_C : Satis.FGBuildableWall
local Build_SteelWall_FlipTris_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_FlipTris_8x4.Build_SteelWall_FlipTris_8x4_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_FlipTris_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 2m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_FlipTris_8x2.Build_SteelWall_FlipTris_8x2_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_FlipTris_8x2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_FlipTris_8x1.Build_SteelWall_FlipTris_8x1_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_FlipTris_8x1_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_Window_04.Build_SteelWall_8x4_Window_04_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_8x4_Window_04_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_Window_03.Build_SteelWall_8x4_Window_03_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_8x4_Window_03_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_Window_02.Build_SteelWall_8x4_Window_02_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_8x4_Window_02_C

--- Snaps to Foundations and other Walls.<br>
--- The windows allow Pioneers to see through the wall.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_Window_01.Build_SteelWall_8x4_Window_01_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_8x4_Window_01_C

--- The gate allows Pioneers to pass through the wall.<br>
--- Snaps to foundations and other walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_Gate_01.Build_SteelWall_8x4_Gate_01_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_8x4_Gate_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x1.Build_SteelWall_8x1_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_8x1_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_Tris_8x8.Build_Wall_Concrete_Tris_8x8_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_Tris_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_Tris_8x4.Build_Wall_Concrete_Tris_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_Tris_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 2m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_Tris_8x2.Build_Wall_Concrete_Tris_8x2_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_Tris_8x2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_Tris_8x1.Build_Wall_Concrete_Tris_8x1_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_Tris_8x1_C

--- The gate allows Pioneers to pass through walls.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_Gate_8x4.Build_Wall_Concrete_Gate_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_Gate_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_FlipTris_8x8.Build_Wall_Concrete_FlipTris_8x8_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_FlipTris_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_FlipTris_8x4.Build_Wall_Concrete_FlipTris_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_FlipTris_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 2m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_FlipTris_8x2.Build_Wall_Concrete_FlipTris_8x2_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_FlipTris_8x2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 1m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_FlipTris_8x1.Build_Wall_Concrete_FlipTris_8x1_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_FlipTris_8x1_C

--- Allows Pioneers to pass through the wall.<br>
--- Door settings can be configured.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_SDoor_8x4.Build_Wall_Concrete_SDoor_8x4_C : Satis.Buildable.Building.Doors.BUILD_SingleDoor_Base_01.BUILD_SingleDoor_Base_01_C
local Build_Wall_Concrete_SDoor_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_WallSet_Steel_Angular_8x4.Build_WallSet_Steel_Angular_8x4_C : Satis.FGBuildableWallLightweight
local Build_WallSet_Steel_Angular_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_Wall_Steel_8x8_Corner_01.Build_Wall_Steel_8x8_Corner_01_C : Satis.FGBuildableCornerWall
local Build_Wall_Steel_8x8_Corner_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_Wall_Steel_8x4_Corner_01.Build_Wall_Steel_8x4_Corner_01_C : Satis.FGBuildableCornerWall
local Build_Wall_Steel_8x4_Corner_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_DoorC_01.Build_SteelWall_8x4_DoorC_01_C : Satis.Buildable.Building.Doors.BUILD_SingleDoor_Base_01.BUILD_SingleDoor_Base_01_C
local Build_SteelWall_8x4_DoorC_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_DoorS_01.Build_SteelWall_8x4_DoorS_01_C : Satis.Buildable.Building.Doors.BUILD_SingleDoor_Base_01.BUILD_SingleDoor_Base_01_C
local Build_SteelWall_8x4_DoorS_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_WallSet_Steel_Angular_8x8.Build_WallSet_Steel_Angular_8x8_C : Satis.FGBuildableWallLightweight
local Build_WallSet_Steel_Angular_8x8_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_Wall_Steel_8x8_Corner_2.Build_Wall_Steel_8x8_Corner_2_C : Satis.FGBuildableCornerWall
local Build_Wall_Steel_8x8_Corner_2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_Wall_Steel_8x4_Corner_2.Build_Wall_Steel_8x4_Corner_2_C : Satis.FGBuildableCornerWall
local Build_Wall_Steel_8x4_Corner_2_C

--- Allows Pioneers to pass through the wall.<br>
--- Door settings can be configured.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Door_8x4_03_Steel.Build_Wall_Door_8x4_03_Steel_C : Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_DoorS_01.Build_SteelWall_8x4_DoorS_01_C
local Build_Wall_Door_8x4_03_Steel_C

--- Allows Pioneers to pass through the wall.<br>
--- Door settings can be configured.<br>
--- Snaps to Foundations and other Walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_Door_8x4_01_Steel.Build_Wall_Door_8x4_01_Steel_C : Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4_DoorC_01.Build_SteelWall_8x4_DoorC_01_C
local Build_Wall_Door_8x4_01_Steel_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_8x4_02.Build_Wall_8x4_02_C : Satis.FGBuildableWallLightweight
local Build_Wall_8x4_02_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_Angular_8x4.Build_Wall_Concrete_Angular_8x4_C : Satis.FGBuildableWallLightweight
local Build_Wall_Concrete_Angular_8x4_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 8m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x8_Corner_2.Build_Wall_Concrete_8x8_Corner_2_C : Satis.FGBuildableCornerWall
local Build_Wall_Concrete_8x8_Corner_2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.ConcreteWallSet.Build_Wall_Concrete_8x4_Corner_2.Build_Wall_Concrete_8x4_Corner_2_C : Satis.FGBuildableCornerWall
local Build_Wall_Concrete_8x4_Corner_2_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.Build_Wall_8x4_01.Build_Wall_8x4_01_C : Satis.FGBuildableWallLightweight
local Build_Wall_8x4_01_C

--- Snaps to foundations and other walls.<br>
--- Useful for building multi-floor structures.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Wall.SteelWallSet.Build_SteelWall_8x4.Build_SteelWall_8x4_C : Satis.FGBuildableWallLightweight
local Build_SteelWall_8x4_C

--- This FicsIt-Networks Wall Plug allows you to distribute a network circuit more easily near buildings and indoors.
---@class FIN.Network.NetworkWallPlug.NetworkWallPlug.NetworkWallPlug_C : Satis.Buildable
local NetworkWallPlug_C

--- The FicsIt-Networks Network Cable allows you to connect your network components wich each other.<br>
--- <br>
--- This is the core process of building up your own computer network.<br>
--- <br>
--- You can cconnect this cable via two a two step placement procedure to two network connectors, or, if the component/machine/whatever doesn't have a network connector, it will try to create add a network adpater to the machine to still allow you to connect it to your network.
---@class FIN.Network.NetworkCable.NetworkCable.NetworkCable_C : FIN.FINNetworkCable
local NetworkCable_C

--- This FicsIt-Networks Small Wall Plug allows you to connect the thin network cable only usable with MCH panels and other small components.<br>
--- <br>
--- You can then connect Normal/Large Network Cables to those Small Network Plugs to be able to connect your MCP Panels and such to a computer.
---@class FIN.Network.SmallNetworkWallPlug.Item_SmallNetworkWallPlug.Item_SmallNetworkWallPlug_C : Satis.Buildable
local Item_SmallNetworkWallPlug_C

--- The FicsIt-Networks Thin Network Cable allows you to connect your network panels wich each other more gracefully.<br>
--- <br>
--- This cable works just like the normal network cable except it can only connect between MCP panels and Small Network Plugs.<br>
--- <br>
--- You can then connect Normal/Large Network Cables to those Small Network Plugs to be able to connect your MCP Panels with a computer.
---@class FIN.Network.ThinNetworkCable.ThinNetworkCable.ThinNetworkCable_C : FIN.FINNetworkCable
local ThinNetworkCable_C

--- 
---@class FIN.Network.NetworkAdapter.BP_NetworkAdapter.BP_NetworkAdapter_C : FIN.FINNetworkAdapter
local BP_NetworkAdapter_C

--- This Pole allows you to connect multiple network components to it via the network cables.<br>
--- <br>
--- This is a essential building for spreading your computer network into the whole landscape.<br>
--- <br>
--- It basically allows you to digitalize the world!
---@class FIN.Network.NetworkPole.NetworkPole.NetworkPole_C : Satis.Buildable
local NetworkPole_C

--- The Lever Module for the modular I/O Panel is used to switch a programm state between two different value (on or off).
---@class FIN.Components.ModularPanel.Modules.ModuleSwitch.ModuleSwitch : FIN.FINModuleBase
local ModuleSwitch

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
ModuleSwitch.state = nil

--- <br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, State = event.pull()
--- ```
--- - `signalName: "ChangeState"`
--- - `component: ModuleSwitch`
--- - `State: boolean` <br>
--- 
---@deprecated
---@type FIN.Signal
ModuleSwitch.ChangeState = { isVarArgs = false }

--- This Stop Button Module for the modular I/O Panel is used to trigger important programmable events.
---@class FIN.Components.ModularPanel.Modules.ModuleStopButton.ModuleStopButton : FIN.FINModuleBase
local ModuleStopButton

--- Triggers a button press by code.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function ModuleStopButton:trigger() end

--- Triggers when the button gets pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "Trigger"`
--- - `component: ModuleStopButton`
---@deprecated
---@type FIN.Signal
ModuleStopButton.Trigger = { isVarArgs = false }

--- The Potentiometer Module for the Modular I/O Control Panel allows you to have rotation input value for you programs.<br>
--- <br>
--- You can rotate it indefinetly into any direction where every rotation triggers a computer network signal.
---@class FIN.Components.ModularPanel.Modules.ModulePotentiometer.ModulePotentiometer : FIN.FINModuleBase
local ModulePotentiometer

--- Rotates the potentiometer into the given direction.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param anticlockwise boolean @True if the potentiometer should be rotated anticlockwise.
function ModulePotentiometer:rotate(anticlockwise) end

--- Triggers if the potentiometer gets rotated by a player or by code.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, anticlockwise = event.pull()
--- ```
--- - `signalName: "PotRotate"`
--- - `component: ModulePotentiometer`
--- - `anticlockwise: boolean` <br>
--- 
---@deprecated
---@type FIN.Signal
ModulePotentiometer.PotRotate = { isVarArgs = false }

--- This Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class FIN.Components.ModularPanel.Modules.ModuleButton.ModuleButton : FIN.FINModuleBase
local ModuleButton

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function ModuleButton:setColor(red, green, blue, Emit) end

--- Triggers a button press by code.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function ModuleButton:trigger() end

--- Triggers when the button gets pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "Trigger"`
--- - `component: ModuleButton`
---@deprecated
---@type FIN.Signal
ModuleButton.Trigger = { isVarArgs = false }

--- This Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class FIN.Components.MicroControlPanels.Modules.PushButton.MCP_Mod_PushButton.PushbuttonModule : FIN.FINModuleBase
local PushbuttonModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
PushbuttonModule.enabled = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function PushbuttonModule:setColor(red, green, blue, Emit) end

--- Triggers a button press by code.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function PushbuttonModule:trigger() end

--- Triggers when the button gets pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "Trigger"`
--- - `component: PushbuttonModule`
---@deprecated
---@type FIN.Signal
PushbuttonModule.Trigger = { isVarArgs = false }

--- This Potentiometer Module allows for input of a fixed value range and fires a signal with the new value each time the internal counter changes. This version has a readout display on it.
---@class FIN.Components.MicroControlPanels.Modules.Potentiometer.MCP_Mod_PotWNum.PotWDisplayModule : FIN.FINModuleBase
local PotWDisplayModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
PotWDisplayModule.enabled = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
PotWDisplayModule.autovalue = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
PotWDisplayModule.value = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
PotWDisplayModule.max = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
PotWDisplayModule.min = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function PotWDisplayModule:setColor(red, green, blue, Emit) end

--- Sets the text to be displayed on this micro display
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param text string @The new text to display
function PotWDisplayModule:setText(text) end

--- Signal fired when this potentiometers value changes by user interaction.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Value = event.pull()
--- ```
--- - `signalName: "valueChanged"`
--- - `component: PotWDisplayModule`
--- - `Value: number` <br>
--- The new value of this potentiometer
---@deprecated
---@type FIN.Signal
PotWDisplayModule.valueChanged = { isVarArgs = false }

--- This Potentiometer Module allows for input of a fixed value range and fires a signal with the new value each time the internal counter changes.
---@class FIN.Components.MicroControlPanels.Modules.Potentiometer.MCP_Mod_Potentiometer.PotentiometerModule : FIN.FINModuleBase
local PotentiometerModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
PotentiometerModule.enabled = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
PotentiometerModule.value = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
PotentiometerModule.max = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
PotentiometerModule.min = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function PotentiometerModule:setColor(red, green, blue, Emit) end

--- Signal fired when this potentiometers value changes by user interaction.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Value = event.pull()
--- ```
--- - `signalName: "valueChanged"`
--- - `component: PotentiometerModule`
--- - `Value: number` <br>
--- The new value of this potentiometer
---@deprecated
---@type FIN.Signal
PotentiometerModule.valueChanged = { isVarArgs = false }

--- This Mushroom Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class FIN.Components.MicroControlPanels.Modules.MushroomPushbutton.MCP_Mod_MushroomPushButtonModule.MushroomPushbuttonModule : FIN.FINModuleBase
local MushroomPushbuttonModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
MushroomPushbuttonModule.enabled = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MushroomPushbuttonModule:setColor(red, green, blue, Emit) end

--- Triggers a button press by code.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function MushroomPushbuttonModule:trigger() end

--- Triggers when the button gets pressed.<br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component = event.pull()
--- ```
--- - `signalName: "Trigger"`
--- - `component: MushroomPushbuttonModule`
---@deprecated
---@type FIN.Signal
MushroomPushbuttonModule.Trigger = { isVarArgs = false }

--- This Potentiometer Module allows for input of a value with infinite range, this because it only fires how much the value changed since last, not how much it is at.
---@class FIN.Components.MicroControlPanels.Modules.Encoder.MCP_Mod_Encoder.EncoderModule : FIN.FINModuleBase
local EncoderModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
EncoderModule.enabled = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function EncoderModule:setColor(red, green, blue, Emit) end

--- <br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, Value = event.pull()
--- ```
--- - `signalName: "valueChanged"`
--- - `component: EncoderModule`
--- - `Value: number` <br>
--- 
---@deprecated
---@type FIN.Signal
EncoderModule.valueChanged = { isVarArgs = false }

--- This Switch Module for modular I/O Panels is used to toggle between three different settings. It has an illuminable spot on the knob and you can use them to trigger specific programmed events.
---@class FIN.Components.MicroControlPanels.Modules.3PosSwitch.MCP_Mod_3Pos_Switch.SwitchModule3Position : FIN.FINModuleBase
local SwitchModule3Position

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
SwitchModule3Position.enabled = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
SwitchModule3Position.state = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function SwitchModule3Position:setColor(red, green, blue, Emit) end

--- <br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, State2 = event.pull()
--- ```
--- - `signalName: "ChangeState"`
--- - `component: SwitchModule3Position`
--- - `State2: number` <br>
--- 
---@deprecated
---@type FIN.Signal
SwitchModule3Position.ChangeState = { isVarArgs = false }

--- This Switch Module for modular I/O Panels is used to toggle between a true and false value. It has an illuminable spot on the knob and you can use them to trigger specific programmed events.
---@class FIN.Components.MicroControlPanels.Modules.2PosSwitch.MCP_Mod_2Pos_Switch.SwitchModule2Position : FIN.FINModuleBase
local SwitchModule2Position

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
SwitchModule2Position.enabled = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
SwitchModule2Position.state = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function SwitchModule2Position:setColor(red, green, blue, Emit) end

--- <br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, State2 = event.pull()
--- ```
--- - `signalName: "ChangeState"`
--- - `component: SwitchModule2Position`
--- - `State2: boolean` <br>
--- 
---@deprecated
---@type FIN.Signal
SwitchModule2Position.ChangeState = { isVarArgs = false }

--- Used to connect Power Poles, Power Generators and Factory buildings.
---@class Satis.Buildable.Factory.PowerLine.Build_PowerLine.Build_PowerLine_C : Satis.FGBuildableWire
local Build_PowerLine_C

--- Can handle up to 4 Power Line connections.<br>
--- <br>
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Satis.Buildable.Factory.PowerPoleMk1.Build_PowerPoleMk1.Build_PowerPoleMk1_C : Satis.FGBuildablePowerPole
local Build_PowerPoleMk1_C

--- Power Pole that attaches to a wall.<br>
--- <br>
--- Can handle up to 4 Power Line connections.<br>
--- <br>
--- Connect Power Poles, Power Generators and factory buildings together with Power Lines to create a power grid. The power grid supplies the connected buildings with power.
---@class Satis.Buildable.Factory.PowerPoleWall.Build_PowerPoleWall.Build_PowerPoleWall_C : Satis.FGBuildablePowerPole
local Build_PowerPoleWall_C

--- The heart of your factory. This is where you complete FICSIT milestones to unlock additional blueprints of buildings, vehicles, parts, equipment etc.
---@class Satis.Buildable.Factory.TradingPost.Build_TradingPost.Build_TradingPost_C : Satis.FGBuildableTradingPost
local Build_TradingPost_C

--- Can be used as a connection for conveyor belts. The height of the pole can be adjusted.<br>
--- Useful to route conveyor belts in a more controlled manner and over long distances.
---@class Satis.Buildable.Factory.ConveyorPole.Build_ConveyorPole.Build_ConveyorPole_C : Satis.FGBuildablePoleLightweight
local Build_ConveyorPole_C

--- 
---@class Satis.Buildable.Factory.Train.Track.Build_RailroadTrackIntegrated.Build_RailroadTrackIntegrated_C : Satis.RailroadTrack
local Build_RailroadTrackIntegrated_C

--- Used to transport trains in a reliable and fast manner.<br>
--- Has a wide turn angle so make sure to plan it out properly.
---@class Satis.Buildable.Factory.Train.Track.Build_RailroadTrack.Build_RailroadTrack_C : Satis.RailroadTrack
local Build_RailroadTrack_C

--- 
---@class Satis.Buildable.Factory.Train.SwitchControl.Build_RailroadSwitchControl.Build_RailroadSwitchControl_C : Satis.RailroadSwitchControl
local Build_RailroadSwitchControl_C

--- A box you can put things in.<br>
--- Has 25 inventory slots.
---@class Satis.Buildable.Factory.StoragePlayer.Build_StorageIntegrated.Build_StorageIntegrated_C : Satis.FGBuildableStorage
local Build_StorageIntegrated_C

--- The Craft Bench allows you to manually produce parts to use in constructing buildings.
---@class Satis.Buildable.Factory.WorkBench.Build_WorkBenchIntegrated.Build_WorkBenchIntegrated_C : Satis.Buildable
local Build_WorkBenchIntegrated_C

--- Transports up to 60 resources per minute. Used to move resources between buildings.
---@class Satis.Buildable.Factory.ConveyorBeltMk1.Build_ConveyorBeltMk1.Build_ConveyorBeltMk1_C : Satis.FGBuildableConveyorBelt
local Build_ConveyorBeltMk1_C

--- Can be attached to ceilings and other ceiling mounts.<br>
--- Useful to route conveyor belts in a more controlled manner and over long distances.
---@class Satis.Buildable.Factory.ConveyorPoleWall.Build_ConveyorCeilingAttachment.Build_ConveyorCeilingAttachment_C : Satis.Buildable
local Build_ConveyorCeilingAttachment_C

--- Can be attached to walls.<br>
--- Useful to route conveyor belts in a more controlled manner and over long distances.
---@class Satis.Buildable.Factory.ConveyorPoleWall.Build_ConveyorPoleWall.Build_ConveyorPoleWall_C : Satis.Buildable
local Build_ConveyorPoleWall_C

--- 
---@class Satis.Buildable.Factory.HubTerminal.Build_HubTerminal.Build_HubTerminal_C : Satis.FGBuildableHubTerminal
local Build_HubTerminal_C

--- Burns Biomass to produce power. Biomass must be loaded manually and is obtained by picking up flora in the world. Produces up to 20 MW of power while operating.
---@class Satis.Buildable.Factory.GeneratorBiomass.Build_GeneratorIntegratedBiomass.Build_GeneratorIntegratedBiomass_C : Satis.FGBuildableGeneratorFuel
local Build_GeneratorIntegratedBiomass_C

--- Label is just a module for placing a label onto the panel
---@class FIN.Components.ModularPanel.Modules.Label.Module_Label_2x1.Label2x1Module : FIN.FINModuleBase
local Label2x1Module

--- This panel allows for dynamic sizeing. For placing on walls.
---@class FIN.Components.MicroControlPanels.MicroControlPanels.SizeablePanel.Build_SizeablePanel.SizeableModulePanel : FIN.FINSizeablePanel
local SizeableModulePanel

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
SizeableModulePanel.height = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
SizeableModulePanel.width = nil

--- Returns all modules placed on the panel.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Object[]
function SizeableModulePanel:getModules() end

--- Returns the module placed at the given location on the panel.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param x number @The x position of the command point, starting from the non-cable end. Indexing starts at 0.
---@param y number @The y position  of the command point, starting from the non-cable end. Indexing starts at 0.
---@return Actor
function SizeableModulePanel:getModule(x, y) end

--- The FicsIt-Networks Drive holder allows you to add any hard drive to the computer system.<br>
--- <br>
--- The drive will then be able to get mounted as root FS or to get added as device file to the FS, after that you wil be able to manually mount the drive to your desired location.
---@class FIN.Computer.Modules.DriveHolder.DriveHolder.DriveHolder_C : FIN.FINComputerDriveHolder
local DriveHolder_C

--- This large verical modular I/O control panel allows you to attach multiple different modules on to it and use them as I/O to control you programms.<br>
--- <br>
--- You can connect it to the FicsIt-Network.<br>
--- <br>
--- Important to note is that every module is it's own component, that means if you want to listen to the signals, you will need to listen to each of them individually.
---@class FIN.Components.ModularPanel.LargeVerticalControlPanel.LargeVerticalControlPanel.LargeVerticalControlPanel : Satis.Buildable
local LargeVerticalControlPanel

--- Returns all modules placed on the panels.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Object[]
function LargeVerticalControlPanel:getModules() end

--- Returns the module placed at the given location on the given panel.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param x number @The x location of the module on the panel. (0 = left)
---@param y number @The y location of the module on the panel. (0 = bottom)
---@param panel number @The panel you want to get the module from.
---@return Actor
function LargeVerticalControlPanel:getModule(x, y, panel) end

--- Enclosure for 1 command points
---@class FIN.Components.MicroControlPanels.MicroControlPanels.LabeledMicroControlPanelBase.ModulePanel : Satis.Buildable
local ModulePanel

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param Y number @
---@return Actor
function ModulePanel:getYModule(Y) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param X number @
---@return Actor
function ModulePanel:getXModule(X) end

--- Returns all modules placed on the panel.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Object[]
function ModulePanel:getModules() end

--- Returns the module placed at the given location on the panel.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param x number @The x position of the command point, starting from the non-cable end. Indexing starts at 0.
---@param y number @The y position  of the command point, starting from the non-cable end. Indexing starts at 0.
---@return Actor
function ModulePanel:getModule(x, y) end

--- Enclosure for 6 command points.<br>
--- <br>
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.<br>
--- <br>
--- You can fully customize the control panels with buttons lights etc.
---@class FIN.Components.MicroControlPanels.MicroControlPanels.MCP_6Point.MCP_6Point.MCP_6Point_C : FIN.Components.MicroControlPanels.MicroControlPanels.LabeledMicroControlPanelBase.ModulePanel
local MCP_6Point_C

--- Enclosure for 2 command points.<br>
--- <br>
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.<br>
--- <br>
--- You can fully customize the control panels with buttons lights etc.
---@class FIN.Components.MicroControlPanels.MicroControlPanels.MCP_2Point.MCP_2Point.MCP_2Point_C : FIN.Components.MicroControlPanels.MicroControlPanels.LabeledMicroControlPanelBase.ModulePanel
local MCP_2Point_C

--- Micro Control Panel for 1 command point, center placement.<br>
--- <br>
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.<br>
--- <br>
--- You can fully customize the control panels with buttons lights etc.
---@class FIN.Components.MicroControlPanels.MicroControlPanels.MCP_1Point.MCP_1Point_Center.MCP_1Point_Center_C : FIN.Components.MicroControlPanels.MicroControlPanels.LabeledMicroControlPanelBase.ModulePanel
local MCP_1Point_Center_C

--- Enclosure for 1 command points.<br>
--- <br>
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.<br>
--- <br>
--- You can fully customize the control panels with buttons lights etc.
---@class FIN.Components.MicroControlPanels.MicroControlPanels.MCP_1Point.MCP_1Point.MCP_1Point_C : FIN.Components.MicroControlPanels.MicroControlPanels.LabeledMicroControlPanelBase.ModulePanel
local MCP_1Point_C

--- Enclosure for 3 command points.<br>
--- <br>
--- These Micro Control Panels can be used through out your factory and allow you to have an easier look on the state of your factory and they allow you to control your factory more easily.<br>
--- <br>
--- You can fully customize the control panels with buttons lights etc.
---@class FIN.Components.MicroControlPanels.MicroControlPanels.MCP_3Point.MCP_3Point.MCP_3Point_C : FIN.Components.MicroControlPanels.MicroControlPanels.LabeledMicroControlPanelBase.ModulePanel
local MCP_3Point_C

--- This Button Module for modular I/O Panels can have different knob color and brightnesses and you can use them to trigger specific programmed events.
---@class FIN.Components.MicroControlPanels.Modules.Plug.MCP_Mod_Plug.MCP_Mod_Plug_C : FIN.FINModuleBase
local MCP_Mod_Plug_C

--- The Modular FicsIt Indicator Pole allows busy pioneers to check on the status of machines, factories and much more from a long distance far away. To express the status you can stack individual modules. FicsIt invested more money to make the indicator pole suitable for every situation by allowing it to be placed on walls, floors and beams with a dynamic orientation and even dynamic height.
---@class FIN.Components.ModularIndicatorPole.Build_ModularIndicatorPole.Build_ModularIndicatorPole_C : FIN.ModularIndicatorPole
local Build_ModularIndicatorPole_C

--- The FicsIt-Networks speaker pole is a network component which allows you to use one more sense of the pioneers to give commands to them or to just make ambient better.<br>
--- <br>
--- The speaker pole can play sound files located in the Computer Folder "/Sounds" in your Satisfactory Save-Games-Folder. The FicsIt-Networks speaker pole is only able to play .ogg files cause FicsIt Inc. has the opinion other file formates are useless.
---@class FIN.Components.Speakers.Speakers.Speakers_C : FIN.SpeakerPole
local Speakers_C

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param Volume number @
function Speakers_C:setVolume(Volume) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param Range number @
function Speakers_C:setRange(Range) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function Speakers_C:getVolume() end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return number
function Speakers_C:getRange() end

--- <br>
--- 
--- ### returns from event.pull:<br>
--- ```
--- local signalName, component, setting, New, Old = event.pull()
--- ```
--- - `signalName: "SpeakerSetting"`
--- - `component: Speakers_C`
--- - `setting: number` <br>
--- 
--- - `New: number` <br>
--- 
--- - `Old: number` <br>
--- 
---@deprecated
---@type FIN.Signal
Speakers_C.SpeakerSetting = { isVarArgs = false }

--- The FicsIt-Networks Screen Driver allows you to add a screen display to the UI of the computer case you build this module intol.<br>
--- <br>
--- You can then use the computer API to get a reference to the screen and so you can bind the screen to a GPU.
---@class FIN.Computer.Modules.Screen.ScreenDriver.ScreenDriver_C : FIN.FINComputerScreen
local ScreenDriver_C

--- This is 100kB of amazing FicsIt-Networks Memory.<br>
--- <br>
--- You can add multiple of the memory bars to your PC and so you can extend the memory of your PC.<br>
--- <br>
--- You always need to hove enough memory because FicsIt doesn't allow out of memory exceptions and if you bring a computer to throw one, you will loose one month of payment.
---@class FIN.Computer.Modules.RAM.RAM_T1.RAM_T1_C : FIN.FINComputerMemory
local RAM_T1_C

--- A Internet Card!
---@class FIN.Computer.Modules.InternetCard.InternetCard.InternetCard_C : FIN.FINInternetCard
local InternetCard_C

--- The FicsIt-Networks Network Card allows yout to send network messages to other network cards in the same computer network.<br>
--- <br>
--- You can use unicast and broadcast messages to share information between multiple different computers in the same network.<br>
--- <br>
--- This is the best and easiest way for you to communicate between multiple computers.<br>
--- <br>
--- If you want to recieve network messages, make sure you also open the according port, since every message is asscociated with a port allowing for better filtering.
---@class FIN.Computer.Modules.NetworkCard.NetworkCard.NetworkCard_C : FIN.NetworkCard
local NetworkCard_C

--- The Ficsit Networks Wireless Access Point allows you to connect a circuit to the Ficsit Wireless Area Network (FWAN), which uses Radio Towers frequencies to create a messaging network over the planet.<br>
---  <br>
--- It should be connected to a Radio Tower, then all network messages received will be broadcasted to all other Wireless Access Points across the map.
---@class FIN.Components.WirelessAccessPoint.WirelessAccessPoint.WirelessAccessPoint_C : FIN.FINWirelessAccessPoint
local WirelessAccessPoint_C

--- The FicsIt-Networks Network Router allows you to sepperate two different component network from each other.<br>
--- But it still lets network messages sent by network cards through.<br>
--- This allows for better networking capabilities, faster networking (can reduce game lag) and makes working with larger networks and multiple computer more easy.<br>
--- <br>
--- The router also provides a couple of functions which allow you to create filters for ports and message senders.
---@class FIN.Components.NetworkRouter.NetworkRouter.NetworkRouter_C : FIN.NetworkRouter
local NetworkRouter_C

--- The FicsIt-Networks large screen allows you to display anything a GPU can render onto a huge plane.<br>
--- <br>
--- You can also interact with the monitor by locking at it and also by clicking on it.
---@class FIN.Components.Screen.Build_Screen.Build_Screen_C : FIN.Screen
local Build_Screen_C

--- This Screen Module for modular I/O Panels allows you to show graphics a GPU renders and to interact with it.<br>
--- <br>
--- You can use the instance of the module to bind it to a GPU. The screen will then display the graphics the GPU renders. If you just look at the screen with the crosshair you will trigger the GPUs OnMouseMove events or if you event click with the right of left mouse button while doing so, you can also trigger the MouseDown and MouseUp events.
---@class FIN.Components.ModularPanel.Modules.ModuleScreen.ModuleScreen_C : FIN.FINModuleScreen
local ModuleScreen_C

--- FicsIt Indicator Module for FicsIt Modular Indicator Poles provides pioneers with the most fundamental indicator. The new and improved incandecent RGB bulb provides versatility to the industrious. Each modules color and intensity can be set via the network by a computer.
---@class FIN.Components.ModularIndicatorPole.IndicatorModules.Build_PoleIndicatorModule.ModularIndicatorPoleModule : FIN.FINModularIndicatorPoleModule
local ModularIndicatorPoleModule

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Color
function ModularIndicatorPoleModule:getColor() end

--- Sets the color of this module
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param r number @The red part of the color in which the light glows. (0.0 - 1.0)
---@param g number @The green part of the color in which the light glows. (0.0 - 1.0)
---@param b number @The blue part of the color in which the light glows. (0.0 - 1.0)
---@param e number @The light intensity of the pole. (>=0.0)
function ModularIndicatorPoleModule:setColor(r, g, b, e) end

--- The FicsIt-Networks indicator light allows yout to determine by the looks of from far away the state of a machine or program.<br>
--- <br>
--- It has dynamic height, is stack able and you can control the color of it via accessing it from the computer network.
---@class FIN.Components.IndicatorPole.IndicatorPole.IndicatorPole_C : FIN.IndicatorPole
local IndicatorPole_C

--- The FicsIt-Networks Codeable Splitter is able to get connected to the component network and provides functions and signals for custom splitter behaviour defenition.<br>
--- <br>
--- This allows you to change the splitting behaviour in runtime by connected computers so it can f.e. depend on the amount of items in a storage container.
---@class FIN.Components.CodeableSplitter.CodeableSplitter.CodeableSplitter_C : FIN.CodeableSplitter
local CodeableSplitter_C

--- The FicsIt-Networks Codeable Merger  is able to get connected to the component network and provides functions and signals for custom merger behaviour defenition.<br>
--- <br>
--- This allows you to change the merging behaviour in runtime by connected computers so it can f.e. depend on the amount of items in a storage container.
---@class FIN.Components.CodeableMerger.CodeableMerger.CodeableMerger_C : FIN.CodeableMerger
local CodeableMerger_C

--- Label is just a module for placing a label onto the panel
---@class FIN.Components.ModularPanel.Modules.Label.Module_Label_1x1.Label1x1Module : FIN.FINModuleBase
local Label1x1Module

--- Provides a relatively small text only display for Control Panels. <br>
--- Text height is fixed, but text is squeezed to fit horizontally.
---@class FIN.Components.MicroControlPanels.Modules.MicroDisplay.MCP_Mod_MicroDisplaySquare.SquareMicroDisplayModule : FIN.FINModuleBase
local SquareMicroDisplayModule

--- Sets the text to be displayed on this micro display
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param text string @The new text to display
function SquareMicroDisplayModule:setText(text) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function SquareMicroDisplayModule:setColor(red, green, blue, Emit) end

--- Provides a small text only display for Control Panels. <br>
--- Can display up to 3 digits, One additional dot may be used.
---@class FIN.Components.MicroControlPanels.Modules.MicroDisplay.MCP_Mod_MicroDisplay.MicroDisplayModule : FIN.FINModuleBase
local MicroDisplayModule

--- Sets the text to be displayed on this micro display
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param text string @The new text to display
function MicroDisplayModule:setText(text) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function MicroDisplayModule:setColor(red, green, blue, Emit) end

--- Provides a relatively small text only display for Control Panels. <br>
--- Text height is fixed, but text is squeezed to fit horizontally.
---@class FIN.Components.MicroControlPanels.Modules.MicroDisplay.MCP_Mod_LargeMicroDIsplay.LargeMicroDisplayModule : FIN.FINModuleBase
local LargeMicroDisplayModule

--- Sets the text to be displayed on this micro display
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param text string @The new text to display
function LargeMicroDisplayModule:setText(text) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function LargeMicroDisplayModule:setColor(red, green, blue, Emit) end

--- Indicator Module for panels
---@class FIN.Components.MicroControlPanels.Modules.Indicator.MCP_Mod_Indicator.IndicatorModule : FIN.FINModuleBase
local IndicatorModule

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function IndicatorModule:setColor(red, green, blue, Emit) end

--- A small buzzer for panel mounting capable of playing single frequency beeps
---@class FIN.Components.MicroControlPanels.Modules.Buzzer.MCP_Mod_Buzzer.BuzzerModule : FIN.FINModuleBase
local BuzzerModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BuzzerModule.volume = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BuzzerModule.decayCurve = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BuzzerModule.decayTime = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BuzzerModule.attackCurve = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
BuzzerModule.isPlaying = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BuzzerModule.attackTime = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BuzzerModule.frequency = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
function BuzzerModule:stop() end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
function BuzzerModule:beep() end

--- The FicsIt-Networks Text-Display Module for the Modular Control Panel is a simple GPU and Screen combined!<br>
--- <br>
--- It allows you to display any kind of text with differnt font sizes and you can even switch between two fonts!<br>
--- <br>
--- But you can't interact with it, nor change the background/foreground color as you can do with a GPU.
---@class FIN.Components.ModularPanel.Modules.ModuleTextDisplay.ModuleTextDisplay : FIN.FINModuleBase
local ModuleTextDisplay

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@type boolean
ModuleTextDisplay.monospace = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@type number
ModuleTextDisplay.size = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@type string
ModuleTextDisplay.text = nil

--- This large modular I/O control panel allows you to attach multiple different modules on to it and use them as I/O to control you programms.<br>
--- <br>
--- You can connect it to the FicsIt-Network.<br>
--- <br>
--- Important to note is that every module is it's own component, that means if you want to listen to the signals, you will need to listen to each of them individually.
---@class FIN.Components.ModularPanel.LargeControlPanel.LargeControlPanel.LargeControlPanel : Satis.Buildable
local LargeControlPanel

--- Returns all modules placed on the panel.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Object[]
function LargeControlPanel:getModules() end

--- Returns the module placed at the given location on the panel.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param x number @The x location of the module on the panel. (0 = left)
---@param y number @The y location of the module on the panel. (0 = bottom)
---@return Actor
function LargeControlPanel:getModule(x, y) end

--- A small analogue Gauge for use on Micro Enclosures. The red portion and needle position can be changed through FIN
---@class FIN.Components.MicroControlPanels.Modules.Guage.MCP_Mod_Guage.GaugeModule : FIN.FINModuleBase
local GaugeModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
GaugeModule.limit = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
GaugeModule.percent = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function GaugeModule:setColor(red, green, blue, Emit) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
function GaugeModule:setBackgroundColor(red, green, blue) end

--- A medium analogue Gauge for use on Large Panels. The red portion and needle position can be changed through FIN
---@class FIN.Components.ModularPanel.Modules.BigGuage.Module_BigGuage.BigGaugeModule : FIN.FINModuleBase
local BigGaugeModule

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BigGaugeModule.limit = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
BigGaugeModule.percent = nil

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function BigGaugeModule:setColor(red, green, blue, Emit) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param red number @
---@param green number @
---@param blue number @
---@param Emit number @
function BigGaugeModule:setBackgroundColor(red, green, blue, Emit) end

--- The FicsIt-Networks Vehicle Scanner allows you to communicate with vehicles driving over the scanner.<br>
--- <br>
--- You can also get notfied when a vehicle enters or leaves the scanner.
---@class FIN.Components.VehicleScanner.VehicleScanner.VehicleScanner_C : FIN.VehicleScanner
local VehicleScanner_C

--- This CPU is from the FicsIt-Lua series and allows you to program the PC with Lua.<br>
--- <br>
--- You can only place one CPU per PC.<br>
--- <br>
--- You are required to have at least one CPU per PC to run it. FicsIt does not allow unused PC Cases to get build.
---@class FIN.Computer.Modules.CPU.CPU_Lua.CPU_Lua_C : FicsItNetworksLua.FINComputerProcessorLua
local CPU_Lua_C

--- The Graphical Processing Unit T2 allows for 2D Drawing on a screen.<br>
--- <br>
--- You are able to draw with lines, boxes, text, images & more.<br>
--- <br>
--- And through the use of transformation stack and clipping stack, you can more easily create more complex drawings!<br>
--- <br>
--- The GPU also implemnts some signals allowing you to interact with the graphics more easily via keyboard, mouse and even touch.
---@class FIN.Computer.Modules.GPU.GPU_T2.GPU_T2_C : FIN.FINComputerGPUT2
local GPU_T2_C

--- The FicsIt-Networks GPU T1 allows you to render a character grid onto any kind of screen.<br>
--- <br>
--- Each character of this grid can be colored as you want as well as the background of each character.<br>
--- <br>
--- You can also change the resolution to up to 150x50 characters.<br>
--- <br>
--- The GPU also implemnts some signals allowing you to interact with the graphics more easily via keyboard, mouse and even touch.
---@class FIN.Computer.Modules.GPU.GPU_T1.GPU_T1_C : FIN.GPUT1
local GPU_T1_C

--- The FicsIt-Network computer case is the most important thing you will know of. This case already holds the essentials of a computer for you. Like a network connector, keyboard, mouse and screen. But most important of all, it already has a motherboard were you can place and configure the computer just like you want.
---@class FIN.Computer.Computer.Computer_C : FIN.ComputerCase
local Computer_C

--- This FicsIt-Networks Wall Plug allows you to pass a network circuit through a wall, allowing for more ease of use of the network cables.
---@class FIN.Network.NetworkWallPlug_Double.NetworkWallPlug_Double.NetworkWallPlug_Double_C : Satis.Buildable
local NetworkWallPlug_Double_C

--- Contains 24 slots for storing large amounts of items.<br>
--- Has an input and output for conveyor belts.
---@class Satis.Buildable.Factory.StorageContainerMk1.Build_StorageContainerMk1.Build_StorageContainerMk1_C : Satis.FGBuildableStorage
local Build_StorageContainerMk1_C

--- Contains 48 slots for storing large amounts of items.<br>
--- Has two inputs and outputs for conveyor belts.
---@class Satis.Buildable.Factory.StorageContainerMk2.Build_StorageContainerMk2.Build_StorageContainerMk2_C : Satis.FGBuildableStorage
local Build_StorageContainerMk2_C

--- Can contain up to 2400m³ of fluid.<br>
--- Has an input and output for pipes.
---@class Satis.Buildable.Factory.IndustrialFluidContainer.Build_IndustrialTank.Build_IndustrialTank_C : Satis.PipeReservoir
local Build_IndustrialTank_C

--- Can contain up to 400m³ of fluid.<br>
--- Has an input and output for pipes.
---@class Satis.Buildable.Factory.StorageTank.Build_PipeStorageTank.Build_PipeStorageTank_C : Satis.PipeReservoir
local Build_PipeStorageTank_C

--- Used to limit Pipeline flow rates.<br>
--- Can be attached to a Pipeline.<br>
--- <br>
--- NOTE: Has an in- and output direction.
---@class Satis.Buildable.Factory.PipeValve.Build_Valve.Build_Valve_C : Satis.PipelinePump
local Build_Valve_C

--- Train Signals are used to direct the movement of Trains to avoid collisions and bottlenecks.<br>
--- <br>
--- Block Signals can be placed on Railways to create 'Blocks' between each other. When a Train is occupying such a Block, other Trains will be unable to enter it.<br>
--- <br>
--- Caution: Signals are directional! Trains are unable to move against this direction, so be sure to set up Signals in both directions for bi-directional Railways.
---@class Satis.Buildable.Factory.Train.Signal.Build_RailroadBlockSignal.Build_RailroadBlockSignal_C : Satis.RailroadSignal
local Build_RailroadBlockSignal_C

--- Train Signals are used to direct the movement of Trains to avoid collisions and bottlenecks.<br>
--- <br>
--- Path Signals are advanced signals that are especially useful for bi-directional Railways and complex intersections. They function similarly to Block Signals but rather than occupying the entire Block, Trains can reserve a specific path through it and will only enter the Block if their path allows them to fully pass through it.<br>
--- <br>
--- Caution: Signals are directional! Trains are unable to move against this direction, so be sure to set up Signals in both directions for bi-directional Railways.
---@class Satis.Buildable.Factory.Train.Signal.Build_RailroadPathSignal.Build_RailroadPathSignal_C : Satis.RailroadSignal
local Build_RailroadPathSignal_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 16m x 8m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Huge.Build_StandaloneWidgetSign_Huge_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Huge_C

--- 
---@class Satis.Buildable.Factory.SignPole.Build_SignPole.Build_SignPole_C : Satis.FGBuildableSignSupport
local Build_SignPole_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Large.Build_StandaloneWidgetSign_Large_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Large_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 2m x 1m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Medium.Build_StandaloneWidgetSign_Medium_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Medium_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 2m x 3m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Portrait.Build_StandaloneWidgetSign_Portrait_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Portrait_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 2m x 0.5m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Small.Build_StandaloneWidgetSign_Small_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Small_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 4m x 0.5m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_SmallVeryWide.Build_StandaloneWidgetSign_SmallVeryWide_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_SmallVeryWide_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 3m x 0.5m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_SmallWide.Build_StandaloneWidgetSign_SmallWide_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_SmallWide_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 2m x 2m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Square.Build_StandaloneWidgetSign_Square_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Square_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 1m x 1m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Square_Small.Build_StandaloneWidgetSign_Square_Small_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Square_Small_C

--- Signs can be customized with different elements, such as icons and text, to improve factory organization.<br>
--- <br>
--- Can be placed freely, on Walls, or attached to a variety of buildings, such as Storage Containers.<br>
--- <br>
--- Size: 0.5m x 0.5m
---@class Satis.Buildable.Factory.SignDigital.Build_StandaloneWidgetSign_Square_Tiny.Build_StandaloneWidgetSign_Square_Tiny_C : Satis.WidgetSign
local Build_StandaloneWidgetSign_Square_Tiny_C

--- Automatically opens when living beings or vehicles approach it.<br>
--- Gate settings can be configured.<br>
--- Snaps to foundations and walls.<br>
--- <br>
--- Size: 8m x 4m
---@class Satis.Buildable.Building.Doors.Build_Gate_Automated_8x4.Build_Gate_Automated_8x4_C : Satis.Door
local Build_Gate_Automated_8x4_C

--- Contains three cordinates (X, Y, Z) to describe a position or movement vector in 3D Space
---@class Vector
local Vector

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector.x = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector.y = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector.z = nil

--- The addition (+) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Vector @The other vector that should be added to this vector
---@return Vector
function Vector:FIN_Operator_Add(other) end

--- The subtraction (-) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Vector @The other vector that should be subtracted from this vector
---@return Vector
function Vector:FIN_Operator_Sub(other) end

--- The Negation operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Vector
function Vector:FIN_Operator_Neg() end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Vector @The other vector to calculate the scalar product with.
---@return number
function Vector:FIN_Operator_Mul(other) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param factor number @The factor with which this vector should be scaled with.
---@return Vector
function Vector:FIN_Operator_Mul_1(factor) end

--- Contains two cordinates (X, Y) to describe a position or movement vector in 2D Space
---@class Vector2D
local Vector2D

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector2D.x = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector2D.y = nil

--- The addition (+) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Vector2D @The other vector that should be added to this vector
---@return Vector2D
function Vector2D:FIN_Operator_Add(other) end

--- The subtraction (-) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Vector2D @The other vector that should be subtracted from this vector
---@return Vector2D
function Vector2D:FIN_Operator_Sub(other) end

--- The Negation operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Vector2D
function Vector2D:FIN_Operator_Neg() end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Vector2D @The other vector to calculate the scalar product with.
---@return number
function Vector2D:FIN_Operator_Mul(other) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param factor number @The factor with which this vector should be scaled with.
---@return Vector2D
function Vector2D:FIN_Operator_Mul_1(factor) end

--- A structure that holds a rgba color value
---@class Color
local Color

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Color.r = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Color.g = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Color.b = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Color.a = nil

--- The addition (+) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Color @The other color that should be added to this color
---@return Color
function Color:FIN_Operator_Add(other) end

--- The Negation operator for this struct. Does NOT make the color negative. Calculates 1 - this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Color
function Color:FIN_Operator_Neg_1() end

--- The subtraction (-) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Color @The other color that should be subtracted from this color
---@return Color
function Color:FIN_Operator_Sub(other) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param factor number @The factor with which this color should be scaled with.
---@return Vector
function Color:FIN_Operator_Mul_1(factor) end

--- 
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param factor number @The factor with which this color should be scaled inversly with.
---@return Vector
function Color:FIN_Operator_Div_1(factor) end

--- Contains rotation information about a object in 3D spaces using 3 rotation axis in a gimble.
---@class Rotator
local Rotator

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Rotator.pitch = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Rotator.yaw = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Rotator.roll = nil

--- The addition (+) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Rotator @The other rotator that should be added to this rotator
---@return Rotator
function Rotator:FIN_Operator_Add(other) end

--- The subtraction (-) operator for this struct.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param other Rotator @The other rotator that should be subtracted from this rotator
---@return Rotator
function Rotator:FIN_Operator_Sub(other) end

--- A Vector containing four values.
---@class Vector4
local Vector4

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector4.x = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector4.y = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector4.z = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Vector4.w = nil

--- A struct containing four floats that describe a margin around a box (like a 9-patch).
---@class SlateCore.Margin
local Margin

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Margin.left = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Margin.right = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Margin.top = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
Margin.bottom = nil

--- A structure that holds item information.
---@class Satis.Item
local Item

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Satis.ItemType
Item.type = nil

--- A structure that holds item information and item amount to represent an item stack.
---@class Satis.ItemStack
local ItemStack

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
ItemStack.count = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Satis.Item
ItemStack.item = nil

--- A struct that holds a pair of amount and item type.
---@class Satis.ItemAmount
local ItemAmount

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
ItemAmount.amount = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Satis.ItemType
ItemAmount.type = nil

--- A struct containing information about a game icon (used in f.e. signs).
---@class Satis.IconData
local IconData

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
IconData.isValid = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
IconData.id = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
IconData.ref = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
IconData.animated = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
IconData.iconName = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
IconData.iconType = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
IconData.hidden = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
IconData.searchOnly = nil

--- Contains infromation about the rules that descibe when a trian should depart from a station
---@class Satis.TrainDockingRuleSet
local TrainDockingRuleSet

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
TrainDockingRuleSet.definition = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
TrainDockingRuleSet.duration = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
TrainDockingRuleSet.isDurationAndRule = nil

--- Returns the types of items that will be loaded.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.ItemType[]
function TrainDockingRuleSet:getLoadFilters() end

--- Sets the types of items that will be loaded.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param filters Satis.ItemType[] @The item filter array
function TrainDockingRuleSet:setLoadFilters(filters) end

--- Returns the types of items that will be unloaded.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.ItemType[]
function TrainDockingRuleSet:getUnloadFilters() end

--- Sets the types of items that will be loaded.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param filters Satis.ItemType[] @The item filter array
function TrainDockingRuleSet:setUnloadFilters(filters) end

--- This structure stores all data that defines what a sign displays.
---@class Satis.PrefabSignData
local PrefabSignData

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Object
PrefabSignData.layout = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Color
PrefabSignData.foreground = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Color
PrefabSignData.background = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Color
PrefabSignData.auxiliary = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Satis.SignType
PrefabSignData.signType = nil

--- Returns all text elements and their values.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return string[],string[]
function PrefabSignData:getTextElements() end

--- Returns all icon elements and their values.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return string[],number[]
function PrefabSignData:getIconElements() end

--- Sets all text elements and their values.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param textElements string[] @The element names for all text elements.
---@param textElementValues string[] @The values for all text elements.
function PrefabSignData:setTextElements(textElements, textElementValues) end

--- Sets all icon elements and their values.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param iconElements string[] @The element names for all icon elements.
---@param iconElementValues number[] @The values for all icon elements.
function PrefabSignData:setIconElements(iconElements, iconElementValues) end

--- Sets a text element with the given element name.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param elementName string @The name of the text element
---@param value string @The value of the text element
function PrefabSignData:setTextElement(elementName, value) end

--- Sets a icon element with the given element name.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param elementName string @The name of the icon element
---@param value number @The value of the icon element
function PrefabSignData:setIconElement(elementName, value) end

--- Gets a text element with the given element name.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param elementName string @The name of the text element
---@return number
function PrefabSignData:getTextElement(elementName) end

--- Gets a icon element with the given element name.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param elementName string @The name of the icon element
---@return number
function PrefabSignData:getIconElement(elementName) end

--- A structure that can hold a buffer of characters and colors that can be displayed with a gpu
---@class FIN.GPUT1Buffer
local GPUT1Buffer

--- Allows to get the dimensions of the buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@return number,number
function GPUT1Buffer:getSize() end

--- Allows to set the dimensions of the buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param width number @The width this buffer should now have
---@param height number @The height this buffer now have
function GPUT1Buffer:setSize(width, height) end

--- Allows to get a single pixel from the buffer at the given position
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x number @The x position of the character you want to get
---@param y number @The y position of the character you want to get
---@return string,Color,Color
function GPUT1Buffer:get(x, y) end

--- Allows to set a single pixel of the buffer at the given position
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x number @The x position of the character you want to set
---@param y number @The y position of the character you want to set
---@param c string @The character the pixel should have
---@param foreground Color @The foreground color the pixel at the given position should have
---@param background Color @The background color the pixel at the given position should have
---@return boolean
function GPUT1Buffer:set(x, y, c, foreground, background) end

--- Copies the given buffer at the given offset of the upper left corner into this buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x number @The x offset of the upper left corner of the buffer relative to this buffer
---@param y number @The y offset of the upper left corener of the buffer relative to this buffer
---@param buffer FIN.GPUT1Buffer @The buffer from wich you want to copy from
---@param textBlendMode number @The blend mode that is used for the text. 0 = Overwrite this with the content of the given buffer 1 = Overwrite with only characters that are not ' ' 2 = Overwrite only were this characters are ' ' 3 = Keep this buffer
---@param foregroundBlendMode number @The blend mode that is used for the foreground color. 0 = Overwrite with the given color 1 = Normal alpha composition 2 = Multiply 3 = Divide 4 = Addition 5 = Subtraction 6 = Difference 7 = Darken Only 8 = Lighten Only 9 = None
---@param backgroundBlendMode number @The blend mode that is used for the background color. 0 = Overwrite with the given color 1 = Normal alpha composition 2 = Multiply 3 = Divide 4 = Addition 5 = Subtraction 6 = Difference 7 = Darken Only 8 = Lighten Only 9 = None
function GPUT1Buffer:copy(x, y, buffer, textBlendMode, foregroundBlendMode, backgroundBlendMode) end

--- Allows to write the given text onto the buffer and with the given offset.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x number @The X Position at which the text should begin to get written.
---@param y number @The Y Position at which the text should begin to get written.
---@param text string @The text that should get written.
---@param foreground Color @The foreground color which will be used to write the text.
---@param background Color @The background color which will be used to write the text.
function GPUT1Buffer:setText(x, y, text, foreground, background) end

--- Draws the given character at all given positions in the given rectangle on-to the hidden screen buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x number @The x coordinate at which the rectangle should get drawn. (upper-left corner)
---@param y number @The y coordinate at which the rectangle should get drawn. (upper-left corner)
---@param width number @The width of the rectangle.
---@param height number @The height of the rectangle.
---@param character string @A string with a single character that will be used for each pixel in the range you want to fill.
---@param foreground Color @The foreground color which will be used to fill the rectangle.
---@param background Color @The background color which will be used to fill the rectangle.
function GPUT1Buffer:fill(x, y, width, height, character, foreground, background) end

--- Allows to set the internal data of the buffer more directly.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param characters string @The characters you want to draw with a length of exactly width*height.
---@param foreground number[] @The values of the foreground color slots for each character were a group of four values give one color. so the length has to be exactly width*height*4.
---@param background number[] @The values of the background color slots for each character were a group of four values give one color. so the length has to be exactly width*height*4.
---@return boolean
function GPUT1Buffer:setRaw(characters, foreground, background) end

--- Clones this buffer into a new struct
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.GPUT1Buffer
function GPUT1Buffer:clone() end

--- This struct contains the necessary information to draw a box onto the GPU T2.
---@class FIN.GPUT2DrawCallBox
local GPUT2DrawCallBox

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Vector2D
GPUT2DrawCallBox.position = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Vector2D
GPUT2DrawCallBox.size = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
GPUT2DrawCallBox.rotation = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Color
GPUT2DrawCallBox.color = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type string
GPUT2DrawCallBox.image = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Vector2D
GPUT2DrawCallBox.imageSize = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
GPUT2DrawCallBox.hasCenteredOrigin = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
GPUT2DrawCallBox.horizontalTiling = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
GPUT2DrawCallBox.verticalTiling = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
GPUT2DrawCallBox.isBorder = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type SlateCore.Margin
GPUT2DrawCallBox.margin = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
GPUT2DrawCallBox.isRounded = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Vector4
GPUT2DrawCallBox.radii = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
GPUT2DrawCallBox.hasOutline = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
GPUT2DrawCallBox.outlineThickness = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Color
GPUT2DrawCallBox.outlineColor = nil

--- A Future struct MAY BE HANDLED BY CPU IMPLEMENTATION differently, generaly, this is used to make resources available on a later point in time. Like if data won't be avaialble right away and you have to wait for it to process first. Like when you do a HTTP Request, then it takes some time to get the data from the web server. And since we don't want to halt the game and wait for the data, you can use a future to check if the data is available, or let just the Lua Code wait, till the data becomes available.
---@class FIN.Future
local Future

--- A track section that combines the area between multiple signals.
---@class FIN.RailroadSignalBlock
local RailroadSignalBlock

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadSignalBlock.isValid = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadSignalBlock.isBlockOccupied = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type boolean
RailroadSignalBlock.hasBlockReservation = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type boolean
RailroadSignalBlock.isPathBlock = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
RailroadSignalBlock.blockValidation = nil

--- Allows you to check if this block is occupied by a given train.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param train Satis.Train @The train you want to check if it occupies this block
---@return boolean
function RailroadSignalBlock:isOccupiedBy(train) end

--- Returns a list of trains that currently occupate the block.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Train[]
function RailroadSignalBlock:getOccupation() end

--- Returns a list of trains that try to reserve this block and wait for approval.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Train[]
function RailroadSignalBlock:getQueuedReservations() end

--- Returns a list of trains that are approved by this block.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Train[]
function RailroadSignalBlock:getApprovedReservations() end

--- Target Point in the waypoint list of a wheeled vehicle.
---@class FIN.TargetPoint
local TargetPoint

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Vector
TargetPoint.pos = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Rotator
TargetPoint.rot = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
TargetPoint.speed = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type number
TargetPoint.wait = nil

--- Information about a train stop in a time table.
---@class FIN.TimeTableStop
local TimeTableStop

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@type Satis.RailroadStation
TimeTableStop.station = nil

--- Returns The rule set wich describe when the train will depart from the train station.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.TrainDockingRuleSet
function TimeTableStop:getRuleSet() end

--- Allows you to change the Rule Set of this time table stop.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param ruleset Satis.TrainDockingRuleSet @The rule set you want to use instead.
function TimeTableStop:setRuleSet(ruleset) end

--- Struct that holds a cache of a whole train/rail network.
---@class FIN.TrackGraph
local TrackGraph

--- Returns a list of all trains in the network.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.Train[]
function TrackGraph:getTrains() end

--- Returns a list of all trainstations in the network.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return Satis.RailroadStation[]
function TrackGraph:getStations() end

--- An entry in the Computer Log.
---@class FIN.LogEntry
local LogEntry

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
LogEntry.content = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type string
LogEntry.timestamp = nil

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Read Only - The value of this property can not be changed by code.
---@type number
LogEntry.verbosity = nil

--- Creates a formatted string representation of this log entry.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return string
function LogEntry:format() end
