type array = { [number]: any }

local function map(tbl: array, callback: (any, number?, array?) -> (any)): array
	local new_tbl = table.create(#tbl)

	for index, value in ipairs(tbl) do
		table.insert(new_tbl, callback(value, index, tbl))
	end
	return new_tbl
end

return map