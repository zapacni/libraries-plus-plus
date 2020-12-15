local math = { }

for _, module in ipairs(script:GetChildren()) do
	math[module.Name] = require(module)
end

return math