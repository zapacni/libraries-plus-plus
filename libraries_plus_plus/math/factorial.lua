local function factorial(num: number): number
	assert(num%1 == 0 and num >= 0, "number must be positive and integral")
	return num == 0 and 1 or num*factorial(num - 1)
end

return factorial