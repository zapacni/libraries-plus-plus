local function add(lhs: Color3, rhs: Color3): Color3
    return Color3.new(lhs.R + rhs.R, lhs.G + rhs.G, lhs.B + rhs.B)
end

return add