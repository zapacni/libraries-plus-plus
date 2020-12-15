local function join(delimiter: string, iterable: string | { [number]: string | number }): string
	local is_string = typeof(iterable) == "string"
	return is_string and table.concat(iterable:split(""), delimiter) or table.concat(iterable, delimiter)
end

return join