type generictable = { [any] : any }

function filter(tbl: generictable, func: (any, any) -> boolean) : generictable
	local filteredtable: generictable = {}
	
	for index, value in pairs(tbl) do
		if func(index, value) then
			filteredtable[index] = value
		end
	end
	
	return filteredtable
end
