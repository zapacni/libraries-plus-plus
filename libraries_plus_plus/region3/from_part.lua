local function from_part(part: BasePart): Region3
	return Region3.new(part.Position - part.Size/2, part.Position + part.Size/2)
end

return from_part