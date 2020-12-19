local region3 = { }

for _, module in ipairs(script:GetChildren()) do
	region3[module.Name] = require(module)
end

return region3