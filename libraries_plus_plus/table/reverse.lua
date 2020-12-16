type array = { [number]: any }

local function reverse(tbl: array): array
	for i = #tbl, 1, -1 do
		tbl[#tbl - i + 1] = tbl[i]
	end

	return tbl
end

return reverse