local function isnan(arg)
	return not rawequal(arg, arg)
end

return isnan