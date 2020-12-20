-- is there a function type? 
local function map(tbl: array, func): array
	local collection = {}

	for i, v in pairs(tbl) do
		collection[i] = func(v)
	end

	return collection
end

return map
