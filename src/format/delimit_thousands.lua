-- based on https://stackoverflow.com/a/10992898

local function delimit_thousands(num: number): string
	local minus, int, fraction = select(3, tostring(num):find("([-]?)(%d+)([.]?%d*)"))
	int = int:reverse():gsub("(%d%d%d)", "%1,")

	return minus .. int:reverse():gsub("^,", "") .. fraction
end

return delimit_thousands