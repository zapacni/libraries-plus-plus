type array = { any }

local function shuffle(tbl: array): array
	assert(#tbl > 1, "bad argument #2 to 'shuffle' (table length < 2)")

	for i = 1, #tbl do
		local j = math.random(#tbl)
		tbl[i], tbl[j] = tbl[j], tbl[i]
	end
	return tbl
end

return shuffle