local function factorial(num: number): number
	assert(num%1 == 0 and num >= 0, "number must be positive and integral")
	return if num == 0 then 1 else num * factorial(num - 1)
end

return factorial