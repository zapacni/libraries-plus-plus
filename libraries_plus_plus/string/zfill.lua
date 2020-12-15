local function zfill(str: string, goal: number): string
	-- only caveat is no sign check supported
	return string.rep("0", goal - #str) .. str
end

return zfill