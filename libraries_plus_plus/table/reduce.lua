type array = { [number]: any }

local function reduce(tbl: array, reducer: (any, any, number?, array?) -> (any), initial_value: any?): array
	local accumulator = initial_value

	for index, value in ipairs(tbl) do
		if accumulator == nil then
			accumulator = value
		else
			accumulator = reducer(accumulator, value, index, tbl)
		end
	end
	return accumulator
end

return reduce