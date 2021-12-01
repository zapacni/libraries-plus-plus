-- based on http://lua-users.org/wiki/StringInterpolation

local function interpolate(str: string, tbl: { [string]: string | number }): string
	return (str:gsub("($%b{})", function(capture)
		return tbl[capture:sub(3, -2)] or capture
	end))
end

return interpolate