local function multiply(lhs: Color3, rhs: Color3 | number): Color3
    if typeof(rhs) == "Color3" then
        return Color3.new(lhs.R*rhs.R, lhs.G*rhs.G, lhs.B*rhs.B)
    end
    return Color3.new(lhs.R*rhs, lhs.G*rhs, lhs.B*rhs)
end

return multiply