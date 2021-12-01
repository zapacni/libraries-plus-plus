local function cbrt(num: number): number
	return (math.abs(num)^(1/3)) * math.sign(num)
end

return cbrt