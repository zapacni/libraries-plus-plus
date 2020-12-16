local function isempty(tbl: { [any]: any }): boolean -- idrc if it's a dict
	return next(tbl) == nil
end

return isempty