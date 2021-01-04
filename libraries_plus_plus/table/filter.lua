type array = { [number]: any }

local function filter(tbl: array, predicate: (any, number?, array?) -> boolean): array
	local new_tbl = { }

	for index, value in ipairs(tbl) do
		if predicate(value, index, tbl) then
			table.insert(new_tbl, value)
		end
	end
	return new_tbl
end

return filter