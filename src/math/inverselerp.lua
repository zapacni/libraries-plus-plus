local function inverselerp(min: number, max: number, alpha: number): number
	return ((alpha - min) / (max - min))
end

return inverselerp
