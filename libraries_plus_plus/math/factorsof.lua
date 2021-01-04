local function factorsof(num: number): { [number]: number }
	assert(num >= 0 and num%1 == 0, "number cannot be negative/non-integral")

	if num == 0 then
		return { 0 }
	end

	local factors = { }

	for i = 1, num do
		if num%i == 0 then
			table.insert(factors, num)
		end
	end
	return factors
end

return factorsof