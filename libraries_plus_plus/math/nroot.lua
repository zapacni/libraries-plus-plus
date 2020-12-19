local function nroot(x: number, root: number): number
    local value = math.abs(x) ^ (1 / root)

    if ((x < 0) and (root % 2 == 0)) then
        return nil
    end

    return math.sign(x) * value
end

return nroot
