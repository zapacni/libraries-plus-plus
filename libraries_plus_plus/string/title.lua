local capitalize = require(script.Parent:WaitForChild("capitalize"))

local function title(str: string): string
	return (str:gsub("%S+", capitalize))
end

return title