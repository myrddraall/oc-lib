local shell = require("shell");

shell.execute('rm /boot/06_string_extentions.lua');

shell.execute('rm /usr/lib/json.lua');

shell.execute('cp -r ./boot/* /boot/');
shell.execute('cp -r ./lib/* /usr/lib/');