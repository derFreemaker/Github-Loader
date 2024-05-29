---@alias Core.Json.Serializable.Types
---| string
---| number
---| boolean
---| table
---| Core.Json.ISerializable

---@class Core.Json.ISerializable
local ISerializable = {}
---@return any ...
function ISerializable:Serialize()
end

ISerializable.Serialize = Utils.Class.IsInterface

---@param ... any
---@return any obj
function ISerializable:Static__Deserialize(...)
    return self(...)
end

return interface("Core.Json.ISerializable", ISerializable)