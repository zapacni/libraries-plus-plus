local string = { }

for _, module in ipairs(script:GetChildren()) do
	string[module.Name] = require(module)
end

return string