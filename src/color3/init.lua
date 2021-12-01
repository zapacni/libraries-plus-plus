local color3 = { }

for _, module in ipairs(script:GetChildren()) do
	color3[module.Name] = require(module)
end

return color3