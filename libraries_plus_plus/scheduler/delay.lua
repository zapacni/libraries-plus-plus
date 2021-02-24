local wait = require(script.Parent:WaitForChild("wait"))
local spawn = require(script.Parent:WaitForChild("spawn"))

local function delay(num: number, f: (number?) -> ())
    spawn(function()
        f(wait(num))
    end)
end

return delay