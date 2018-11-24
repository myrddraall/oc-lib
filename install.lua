local shell = require("shell");
shell.execute('rm /usr/lib/json.lua');

shell.execute('cp -r ./lib/* /usr/lib/');