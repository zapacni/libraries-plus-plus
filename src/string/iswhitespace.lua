local function iswhitespace(str: string): boolean
	return not str:match("%S")
end

return iswhitespace