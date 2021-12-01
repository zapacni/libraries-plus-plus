local function isalpha(str: string): boolean
	return not str:match("%A")
end

return isalpha
