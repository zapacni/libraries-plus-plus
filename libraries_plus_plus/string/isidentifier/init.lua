local keywords = require(script:WaitForChild("keywords"))

local function isidentifier(str: string): boolean
	return not table.find(keywords, str) and str:match("^[_%a][_%w]*$")
end

return isidentifier