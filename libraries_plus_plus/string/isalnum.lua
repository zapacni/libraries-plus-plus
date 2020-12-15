local function isalnum(str: string): boolean
	return not str:match("%W")
end

return isalnum