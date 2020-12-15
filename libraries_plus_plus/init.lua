local libraries_plus_plus = { }

for _, module in ipairs(script:GetChildren()) do
	libraries_plus_plus[module.Name] = require(module)
end

return libraries_plus_plus