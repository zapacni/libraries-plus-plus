-- fast spawn

local function spawn(f, ...) -- no generic function AAAAAAAAA
    local bindable = Instance.new("BindableEvent")
    bindable.Event:Connect(f)
    bindable:Fire(...)
    bindable:Destroy()
end

return spawn