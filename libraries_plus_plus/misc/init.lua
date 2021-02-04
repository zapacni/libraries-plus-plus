local misc = { }

for _, module in ipairs(script:GetChildren()) do
	misc[module.Name] = require(module)
end

return misc