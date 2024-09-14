local open = io.open

local function read_file(path)
	local file = open(path, "rb") -- r read mode and b binary mode
	if not file then return nil end
	local content = file:read "*a"
	file:close()
	return content
end

local fileContent = read_file("/sys/class/power_supply/BAT0/capacity");
print (fileContent);
