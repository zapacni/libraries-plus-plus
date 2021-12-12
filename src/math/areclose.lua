local DEFAULT_NUMBER_EPLISON = 1e-7

local function areclose(num1: number, num2: number, eplison: number) : number
   	return math.abs(number - num2) <= (eplison or DEFAULT_NUMBER_EPLISON)
end
