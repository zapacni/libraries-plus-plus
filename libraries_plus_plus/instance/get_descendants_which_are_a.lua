local filter = require(script.Parent.Parent.table).filter

local function get_descendants_which_are_a(instance: Instance, class_name: string): { Instance? }
    return filter(instance:GetDescendants(), function(child: Instance)
        return child:IsA(class_name)
    end)
end

return get_descendants_which_are_a