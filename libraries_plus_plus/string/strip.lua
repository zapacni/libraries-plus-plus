local function strip(str: string, chars: string?): string
	chars = chars or "%s"
	return (str:gsub(string.format("^[%s]*(.-)[%s]*$", chars), "%1"))
end

return strip