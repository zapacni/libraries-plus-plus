local function digital_clock(seconds: number): string
	return string.format("%d:%02d", math.floor(seconds/60), seconds%60)
end

return digital_clock