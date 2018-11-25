local match = string.match;
function string:trim()
    return match(self,'^()%s*$') and '' or match(self,'^%s*(.*%S)');
end