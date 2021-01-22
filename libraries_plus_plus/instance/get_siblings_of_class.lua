local filter = require(script.Parent.Parent.table).filter

local function get_siblings_of_class(instance: Instance, class_name: string): { Instance? }
    local siblings = instance.Parent and instance.Parent:GetChildren() or { }
    table.remove(siblings, table.find(siblings, instance) or 0)
    return filter(siblings, function(sibling: Instance)
        return sibling.ClassName == class_name
    end)
end

return get_siblings_of_class