-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		ALEVirtualTextError({ fg = colors.color5, bg = colors.background }),
		ALEVirtualTextWarning({ fg = colors.color3, bg = colors.background }),
		ALEVirtualTextInfo({ fg = colors.color4, bg = colors.background }),
		ALEError({ ALEVirtualTextError, sp=ALEVirtualTextError.fg, gui = "underline" }),
		ALEWarning({ ALEVirtualTextWarning, sp=ALEVirtualTextWarning.fg, gui = "underline" }),
		ALEInfo({ ALEVirtualTextInfo, sp=ALEVirtualTextInfo.fg, gui = "underline" }),
		ALEErrorSign({ ALEVirtualTextError, gui = "bold" }),
		ALEWarningSign({ ALEVirtualTextWarning, gui = "bold" }),
		ALEInfoSign({ ALEVirtualTextInfo, gui = "bold" }),
	}
end)
