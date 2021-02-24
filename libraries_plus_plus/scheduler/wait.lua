local RunService = game:GetService("RunService")

local function wait(num: number): number
    num = math.abs(num)

    local dt = 0

    while dt < num do
        dt += RunService.Heartbeat:Wait()
    end
    return dt
end

return wait