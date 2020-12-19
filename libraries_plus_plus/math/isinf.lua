local function isinf(num: number): boolean
	return math.abs(num) == math.huge
end

return isinf