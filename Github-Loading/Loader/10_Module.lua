---@class Github_Loading.Module.Data
---@field Namespace string
---@field Name string
---@field FullName string
---@field IsRunnable boolean
---@field Data string

---@class Github_Loading.Module
---@field Name string
---@field FullName string
---@field Namespace string
---@field IsRunnable boolean
---@field Data string
---@field StoredData table
local Module = {}

---@param moduleData Github_Loading.Module.Data
---@return Github_Loading.Module
function Module.new(moduleData)
    local metatable = {
        __index = Module
    }
    return setmetatable({
        Name = moduleData.Name,
        FullName = moduleData.FullName,
        Namespace = moduleData.Namespace,
        IsRunnable = moduleData.IsRunnable,
        Data = moduleData.Data
    }, metatable)
end

---@param ... any
---@return any ...
function Module:Load(...)
    if self.StoredData then
        return table.unpack(self.StoredData)
    end
    local result
    if self.IsRunnable then
        result = table.pack(load(self.Data, self.Namespace)(...))
    else
        result = table.pack(self.Data)
    end
    self.StoredData = result
    return table.unpack(result)
end

return Module
