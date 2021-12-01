local function get_ancestors(instance: Instance): { Instance? }
    instance = instance.Parent
    local ancestors = { instance }

    while instance do
        instance = instance.Parent
        table.insert(ancestors, instance)
    end
    return ancestors
end

return get_ancestors