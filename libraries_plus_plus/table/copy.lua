type array = { [number]: any }

local function copy(tbl: array, deep: boolean): array
	if not deep then
		return table.move(tbl, 1, #tbl, 1, table.create(#tbl))
	end
	
	local new = table.create(#tbl)

	for index, value in ipairs(tbl) do
		if typeof(value) == "table" then
			new[index] = copy(value)
		else
			new[index] = value
		end
	end
	return new
end

return copy