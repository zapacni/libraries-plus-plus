local function strip(str: string, chars: string?): string
	local remove_pattern = string.format("[%%s%s]", chars or "")
	remove_pattern = string.format("^%s*(.-)%s*$", remove_pattern, remove_pattern)
	return (str:gsub(remove_pattern, "%1"))
end

return strip