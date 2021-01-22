local function wait_for_child_of_class(instance: Instance, class_name: string): Instance?
    local found = instance:FindFirstChildOfClass(class_name)

    while not found or found.ClassName ~= class_name do
        found = instance.ChildAdded:Wait()
    end
    return found
end

return wait_for_child_of_class