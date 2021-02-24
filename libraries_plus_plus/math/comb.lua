local math = require(script.Parent:WaitForChild("math"))

local function comb(n: number, k: number): number
	assert(n >= 0 and n%1 == 0, "bad argument #1 to 'comb' (number is negative/non-integral)")
	assert(k >= 0 and k%1 == 0, "bad argument #2 to 'comb' (number is negative/non-integral)")

	return math.factorial(n)/(math.factorial(k)*math.factorial(n - k))
end

return comb