local function wait_for_child_which_is_a(instance: Instance, class_name: string): Instance?
    local found = instance:FindFirstChildWhichIsA(class_name)

    while not found or not found:IsA(class_name) do
        found = instance.ChildAdded:Wait()
    end
    return found
end

return wait_for_child_which_is_a