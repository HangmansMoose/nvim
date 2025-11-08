local M = {}

-- Define the custom function
function M.ColorMyPencils(color)
	-- Clear existing highlights
	vim.cmd.colorscheme(color)

	vim.cmd("hi cTodo guibg=NONE")
	vim.cmd("hi Todo guibg=NONE")

	if color == "gruber-darker" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @comment guifg=#6f7b68")
		vim.cmd("hi Normal guibg=#101010")
		vim.cmd("hi NormalNC guibg=#101010")
		vim.cmd("hi LineNr guibg=#101010")
		vim.cmd("hi CursorLine guibg=#101010")
		vim.cmd("hi TelescopeNormal guibg=#101010")
		vim.cmd("hi SnacksNormal guibg=#101010")
		vim.cmd("hi SnacksPicker guibg=#101010")
		vim.cmd("hi SnacksPickerBoxBorder guibg=#101010")
		vim.cmd("hi SnacksNormalNC guibg=#101010")
		vim.cmd("hi TroubleNormal guibg=#101010")
		vim.cmd("hi TroubleNormalNC guibg=#101010")
		vim.cmd("hi TroubleIndent guibg=#101010")
		vim.cmd("hi TroublePos guibg=#101010")
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi LineNrAbove guifg=#666666")
		vim.cmd("hi LineNrBelow guifg=#666666")
		vim.cmd("hi MatchParen guibg=#777777")
		vim.cmd("hi Delimiter guifg=#666666")
	end

	if color == "jellybeans" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @lsp.type.variable guifg=#e8e8d3")
	end

	if color == "melange" then
		vim.cmd("hi Normal guibg=#151515")
		vim.cmd("hi NormalNC guibg=#151515")
		vim.cmd("hi LineNr guibg=#151515")
		vim.cmd("hi TelescopeNormal guibg=#151515")
		vim.cmd("hi SnacksNormal guibg=#151515")
		vim.cmd("hi SnacksPicker guibg=#151515")
		vim.cmd("hi SnacksPickerBoxBorder guibg=#151515")
		vim.cmd("hi SnacksNormalNC guibg=#151515")
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi LineNrAbove guifg=#666666")
		vim.cmd("hi LineNrBelow guifg=#666666")
		vim.cmd("hi MatchParen guibg=#999999 guifg=#303030")
		vim.cmd("hi Delimiter guifg=#666666")

		--vim.cmd'hi String guifg=#2CA198'
	end

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
	--if vim.loop.os_uname().sysname ~= "Windows_NT" then
	--	vim.cmd("hi Normal guibg=NONE")
	--	vim.cmd("hi NormalNC  guibg=NONE")
	--	vim.cmd("hi SnacksNormal guibg=NONE")
	--	vim.cmd("hi SnacksPicker guibg=NONE")
	--	vim.cmd("hi SnacksPickerBoxBorder guibg=NONE")
	--	vim.cmd("hi NormalFloat guibg=NONE")
	--	vim.cmd("hi LineNr guibg=NONE")
	--	vim.cmd("hi CursorLineNr guibg=NONE guifg=#FFA717")
	--	vim.cmd("hi StatusLine guibg=NONE")
	--	vim.cmd("hi NoiceCmdlineIcon guibg=NONE")
	--	--vim.cmd'hi FloatBorder guibg=NONE'
	--end
end

return M
