function getcolor(whichone)
	c = io.input(os.getenv("HOME").."/.cache/wal/onebyone/c"..tostring(whichone))
	c = io.read("*all")
	c = string.gsub(c, "\n", "")
	return c
end


