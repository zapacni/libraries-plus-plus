local table = { }

for _, module in ipairs(script:GetChildren()) do
	table[module.Name] = require(module)
end

return table