-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		IndentBlanklineChar({ gui = "nocombine", fg = colors.color8 }),
		IndentBlanklineContextChar({ gui = "nocombine", fg = colors.color7 }),
		IndentBlanklineContextStart({ gui = "underline", sp = colors.color7 }),
	}
	-- selene: deny(undefined_variable)
end)
