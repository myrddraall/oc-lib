local match = string.match;
string.trim = function (str)
    return match(str,'^()%s*$') and '' or match(str,'^%s*(.*%S)');
end