local function captalize(str: string): string
	return (str:gsub("^%l", string.upper))
end

return captalize