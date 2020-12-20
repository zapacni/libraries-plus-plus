type array = { [number] : any }

local function reduce(arr: array, func: (any, any, number, array) -> any, initialValue: any?) : any
	local accumulated = initialValue
	
	for index, value in ipairs(arr) do
		if not accumulated then
			accumulated = value
		else
			accumulated = func(accumulated, value, index, arr)
		end
	end
	
	return accumulated
end

return reduce
