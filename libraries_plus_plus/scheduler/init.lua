local scheduler = { }

for _, module in ipairs(script:GetChildren()) do
	scheduler[module.Name] = require(module)
end

return scheduler