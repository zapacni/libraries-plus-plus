local function isalpha(str: string): string
	return not str:match("%A")
end

return isalpha