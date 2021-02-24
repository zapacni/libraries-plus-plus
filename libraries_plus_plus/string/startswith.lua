local function startswith(str: string, start: string): boolean
	return str:sub(1, #start) == start
end

return startswith