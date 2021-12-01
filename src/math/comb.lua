local function factorial(num: number): number
	return if num == 0 then 1 else num * factorial(num - 1)
end

local function comb(n: number, k: number): number
	assert(n >= 0 and n % 1 == 0, "bad argument #1 to 'comb' (number is negative/non-integral)")
	assert(k >= 0 and k % 1 == 0, "bad argument #2 to 'comb' (number is negative/non-integral)")

	return factorial(n)/(factorial(k) * factorial(n - k))
end

return comb