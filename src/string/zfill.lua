local function zfill(str: string, goal: number): string
    local no_sign, replacements = str:gsub("^[%-%+]", "")
    local sign = str:match("^[%-%+]") or ""
    return sign .. string.rep("0", goal - #str - replacements + 1) .. no_sign
end


return zfill