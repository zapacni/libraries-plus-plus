local function get_ancestors_of_class(instance: Instance, class_name: string): { Instance? }
    instance = instance.Parent
    local ancestors = { instance }

    while instance do
        instance = instance.Parent

        if not instance or instance.ClassName ~= class_name then
            continue
        end

        table.insert(ancestors, instance)
    end
    return ancestors
end

return get_ancestors_of_class