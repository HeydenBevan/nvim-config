local M = {}

function M.list_contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then return true end
    end

    return false
end

function M.get_keys(tbl)
    local keys = {}
    for key, _ in pairs(tbl) do
        keys[#keys+1] = key
    end

    return keys
end

function M.get_values(tbl)
    local values = {}
    for _, value in pairs(tbl) do
        values[#values+1] = value
    end

    return values
end

function M.merge(merge_into, merge_from)
    for _, v in pairs(merge_from) do
        merge_into[#merge_into+1] = v
    end

    return existing
end

return M
