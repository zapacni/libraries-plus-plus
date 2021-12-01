local function roundtoplace(num: number, place: number?): number
	place = place or 1
	return math.floor(num * (10^place) + 0.5)/(10^place)
end

return roundtoplace