local function factorial(num: number): number
	return num == 0 and 1 or num*factorial(num - 1)
end

return factorial