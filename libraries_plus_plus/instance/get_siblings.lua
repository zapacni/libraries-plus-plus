local function get_siblings(instance: Instance): { Instance? }
    local siblings = instance.Parent and instance.Parent:GetChildren() or { }
    table.remove(siblings, table.find(siblings, instance) or 0)
    return siblings
end

return get_siblings