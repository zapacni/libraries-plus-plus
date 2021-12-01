local function lerp(start: number, goal: number, alpha: number): number
	return start + (goal - start) * alpha
end

return lerp
