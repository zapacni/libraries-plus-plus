local function quadraticlerp(start: number, goal: number, alpha: number): number
     return (start - goal) * alpha * (alpha - 2) + start
end

return quadraticlerp
