local instance = { }

for _, module in ipairs(script:GetChildren()) do
	instance[module.Name] = require(module)
end

return instance