local function descend(root: Instance, ...: string): Instance?
	local result = root

	for _, name in ipairs({ ... }) do
		result = result:FindFirstChild(name)
	end

	return if result == root then nil else result
end

return descend