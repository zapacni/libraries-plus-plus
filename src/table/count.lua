local function count(tbl: { any }, value: any): number
	local occurrences = 0

	for _, element in ipairs(tbl) do
		if element == value then
			occurrences += 1
		end
	end
	return occurrences
end

return count