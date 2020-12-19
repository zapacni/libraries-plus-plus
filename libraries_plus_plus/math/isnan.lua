local function isnan(arg: any): boolean
	return not rawequal(arg, arg)
end

return isnan