local function zip(...: any) -- help how do i denote a function with variable returns
	local args, args_values = { ... }, { }
	local i = 0

	return function()
		i = i + 1

		for index, tbl in ipairs(args) do
			args_values[index] = tbl[i]

			if args_values[index] == nil then
				return nil
			end
		end
		return table.unpack(args_values)
	end
end

return zip