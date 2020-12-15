local format = { }

for _, module in ipairs(script:GetChildren()) do
	format[module.Name] = require(module)
end

return format