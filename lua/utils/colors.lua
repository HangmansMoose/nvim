local M = {}

-- Define the custom function
function M.ColorMyPencils(color)
	-- Clear existing highlights
	vim.cmd.colorscheme(color)

	vim.cmd("hi cTodo guibg=NONE")
	vim.cmd("hi Todo guibg=NONE")

	if color == "naysayer" then
		vim.cmd("hi Normal guibg=#151515")
		vim.cmd("hi NormalNC guibg=#151515")
		vim.cmd("hi LineNr guibg=#151515")
		vim.cmd("hi TelescopeNormal guibg=#151515")
		vim.cmd("hi SnacksNormal guibg=#151515")
		vim.cmd("hi SnacksPicker guibg=#151515")
		vim.cmd("hi SnacksPickerBoxBorder guibg=#151515")
		vim.cmd("hi SnacksNormalNC guibg=#151515")
		--vim.cmd'hi String guifg=#2CA198'
	end

	if color == "juliana" then
		vim.cmd("hi Normal guibg=#151515")
		vim.cmd("hi NormalNC guibg=#151515")
		vim.cmd("hi LineNr guibg=#151515")
		vim.cmd("hi TelescopeNormal guibg=#151515")
		vim.cmd("hi SnacksNormal guibg=#151515")
		vim.cmd("hi SnacksPicker guibg=#151515")
		vim.cmd("hi SnacksPickerBoxBorder guibg=#151515")
		vim.cmd("hi SnacksNormalNC guibg=#151515")
	end

	if color == "neohybrid" then
		vim.cmd("hi Normal guibg=#121212")
		vim.cmd("hi NormalNC guibg=#121212")
		--vim.cmd'hi TabLine guifg=#e6dbd1'
		--vim.cmd'hi TabLineNC guifg=#151515'
		--vim.cmd'hi CursorLine guibg=#111144'
		vim.cmd("hi Cursor guibg=#00ff33 guifg=#303030")
		vim.cmd("hi cTodo guibg=#121212")
	end

	-- an attempt to remove italics from all themes
	local hl_groups = vim.api.nvim_get_hl(0, {})

	for key, hl_group in pairs(hl_groups) do
		if hl_group.italic then
			vim.api.nvim_set_hl(0, key, vim.tbl_extend("force", hl_group, { italic = false }))
		end
	end

	-- Transparency regardless of colorscheme
	-- In lua ~= is not equal to
	if vim.loop.os_uname().sysname ~= "Windows_NT" then
		vim.cmd("hi Normal guibg=NONE")
		vim.cmd("hi NormalNC  guibg=NONE")
		vim.cmd("hi SnacksNormal guibg=NONE")
		vim.cmd("hi SnacksPicker guibg=NONE")
		vim.cmd("hi SnacksPickerBoxBorder guibg=NONE")
		vim.cmd("hi NormalFloat guibg=NONE")
		vim.cmd("hi LineNr guibg=NONE")
		vim.cmd("hi CursorLineNr guibg=NONE guifg=#FFA717")
		vim.cmd("hi StatusLine guibg=NONE")
		vim.cmd("hi NoiceCmdlineIcon guibg=NONE")
		--vim.cmd'hi FloatBorder guibg=NONE'
	end
end

-- List of colorschemes
local colorschemes = {
	"gruvbox",
	"adwaita",
	"jellybeans",
	"juliana",
	"monokai-v2",
	"mudworld",
	"naysayer",
	"neohybrid",
	"nightwolf",
	"kanagawa",
	"kanagawa-wave",
	"kanagawa-dragon",
	"kanagawa-paper",
	"nordic",
	"rusty",
	"stoics",
}

-- Function to prompt for colorscheme selection
function M.select_colorscheme()
	vim.ui.select(colorschemes, {
		prompt = "Select a colorscheme:",
		format_item = function(item)
			return item
		end,
	}, function(choice)
		if choice then
			M.ColorMyPencils(choice)
		end
	end)
end

-- Set keybinding

return M
