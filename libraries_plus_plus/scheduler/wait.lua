local RunService = game:GetService("RunService")

local function wait(num: number): number
    num = math.abs(num)

    local dt = 0

    while dt < num do
        dt += RunService.PostSimulation:Wait()
    end
    return dt
end

return wait