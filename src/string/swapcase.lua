local islower = require(script.Parent:WaitForChild("islower"))

local function swapcase(str: string): string
	return (str:gsub("%a", function(match: string)
		return islower(match) and match:upper() or match:lower()
	end))
end

return swapcase