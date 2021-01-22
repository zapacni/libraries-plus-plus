type array = { any }

local function reverse(tbl: array): array
	for i = 1, math.floor(#tbl/2) do
		tbl[#tbl - i + 1], tbl[i] = tbl[i], tbl[#tbl - i + 1]
	end

	return tbl
end

return reverse