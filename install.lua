local shell = require("shell");

local args = {...};
local installDir = "";
if args[1] then
    installDir = args[1];
end
if installDir ~= "" then
    local fs = require("filesystem");
    fs.makeDirectory(installDir);
end

shell.execute('rm ' .. installDir .. '/boot/06_string_extentions.lua');

shell.execute('rm ' .. installDir .. '/usr/lib/json.lua');

shell.execute('cp -r ./boot/* ' .. installDir .. '/boot/');
shell.execute('cp -r ./lib/* ' .. installDir .. '/usr/lib/');