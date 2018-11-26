local match = string.match;
string.trim = function (str)
    return match(str,'^()%s*$') and '' or match(str,'^%s*(.*%S)');
end

string.split = function (s, delimiter, limit)
    local result = {};
    local c = 0;
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
        c = c + 1;
        if limit ~= nil and c >= limit then
            break;
        end
    end
    return result;
end

string.padLeft = function (str, len, char)
    if char == nil then char = ' ' end
    return str .. string.rep(char, len - #str);
end

string.padRight = function (str, len, char)
    if char == nil then char = ' ' end
    return string.rep(char, len - #str) .. str;
end

string.padCenter = function (str, len, char)
    if char == nil then char = ' ' end
    local pad = (len - #str) / 2;
    return string.rep(char, math.ceil(pad)) .. str .. string.rep(char, math.floor(pad));
end
