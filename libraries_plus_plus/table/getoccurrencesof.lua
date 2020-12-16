local function getoccurrencesof(tbl: { [number]: any }, value: any): number
	local occurrences = 0
	
	if not table.find(tbl, value) then
		return 0
	end
	
	for _, element in ipairs(tbl) do
		if element == value then
			occurrences = occurrences + 1
		end
	end
	return occurrences
end

return getoccurrencesof