local M = {}

-- Define the custom function
function M.CustomColourscheme(color)
	-- Clear existing highlights
	vim.cmd("hi clear")
	vim.cmd.colorscheme(color)

	vim.cmd("hi cTodo guibg=NONE")
	vim.cmd("hi Todo guibg=NONE")

	if color == "miniwinter" then
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi CursorLine guibg=#050505")
		vim.cmd("hi Cursor guibg=#40ff40")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#000000")
		vim.cmd("hi MiniStatuslineFilename guibg=#101010")
		--vim.cmd("hi MiniStatuslineDevinfo guibg=#101010")
		vim.cmd("hi MiniTablineCurrent guibg=#0a0a0a")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "kanso" or color == "kanso-ink" or color == "kanso-zen" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @comment guifg=#6f7b68")
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi CursorLine guibg=#050505")
		vim.cmd("hi Cursor guibg=#40ff40")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeNormalNC guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#050505")
		vim.cmd("hi TelescopeSelectionCaret guibg=#050505")
		vim.cmd("hi MiniStatuslineFilename guibg=#101010")
		--vim.cmd("hi MiniStatuslineDevinfo guibg=#101010")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "kanagawa" or color == "kanagawa-wave" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @comment guifg=#6f7b68")
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi CursorLine guibg=#050505")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeNormalNC guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#050505")
		vim.cmd("hi TelescopeSelectionCaret guibg=#050505")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "kintsugi-dark" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @comment guifg=#6f7b68")
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi EndOfBuffer guibg=#050505") -- This is also the background of the default splash screen
		vim.cmd("hi MsgArea guibg=#050505") -- Command/Message area below the statusline
		vim.cmd("hi Cursor guibg=#40ff40")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi LineNrAbove guibg=#050505")
		vim.cmd("hi LineNrBelow guibg=#050505")
		vim.cmd("hi CursorLine guibg=#050505")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#939799")
		vim.cmd("hi MiniStatuslineFilename guibg=#050505")
		vim.cmd("hi MiniStatuslineDevinfo guibg=#050505")
		vim.cmd("hi MiniTablineCurrent guibg=#151515")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "koda-moss" or color == "koda-dark" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @comment guifg=#6f7b68")
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi Cursor guibg=#40ff40 guifg=#101010")
		vim.cmd("hi CursorLine guibg=#050505")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#050505")
		vim.cmd("hi MiniStatuslineFilename guibg=#050505")
		vim.cmd("hi MiniStatuslineDevinfo guibg=#050505")
		vim.cmd("hi MiniTablineCurrent guibg=#151515")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "gruber-darker" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @comment guifg=#6f7b68")
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi CursorLine guibg=#050505")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#050505")
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi LineNrAbove guifg=#666666")
		vim.cmd("hi LineNrBelow guifg=#666666")
		vim.cmd("hi MatchParen guibg=#777777")
		vim.cmd("hi Delimiter guifg=#666666")
		vim.cmd("hi MiniStatuslineModeNormal guifg=#252525 guibg=#FFA717")
		vim.cmd("hi MiniTablineCurrent guibg=#151515")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "jellybeans" then
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi @lsp.type.variable guifg=#e8e8d3")
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi CursorLine guibg=#111155")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#050505")
		vim.cmd("hi MiniPickNormal guibg=#050505")
		vim.cmd("hi MiniPickBorder guibg=#050505")
		vim.cmd("hi MiniPickPrompt guibg=#050505")
		vim.cmd("hi MiniNotifyNormal guibg=#050505")
		vim.cmd("hi MiniNotifyBorder guibg=#050505")
		vim.cmd("hi MiniFilesNormal guibg=#050505")
		vim.cmd("hi MiniStatuslineFilename guibg=#050505")
		vim.cmd("hi MiniStatuslineDevinfo guibg=#050505")
		vim.cmd("hi MiniTablineCurrent guibg=#151515")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "melange" then
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi CursorLine guibg=#111155")
		vim.cmd("hi TelescopeNormal guibg=#050505")
		vim.cmd("hi TelescopeBorder guibg=#050505")
		vim.cmd("hi Comment guifg=#6f7b68")
		vim.cmd("hi LineNrAbove guifg=#666666")
		vim.cmd("hi LineNrBelow guifg=#666666")
		vim.cmd("hi MatchParen guibg=#999999 guifg=#303030")
		vim.cmd("hi Delimiter guifg=#666666")
		vim.cmd("hi MiniPickNormal guibg=#050505")
		vim.cmd("hi MiniPickBorder guibg=#050505")
		vim.cmd("hi MiniPickPrompt guibg=#050505")
		vim.cmd("hi MiniNotifyNormal guibg=#050505")
		vim.cmd("hi MiniNotifyBorder guibg=#050505")
		vim.cmd("hi MiniFilesNormal guibg=#050505")
		vim.cmd("hi MiniStatuslineFilename guibg=#050505")
		vim.cmd("hi MiniStatuslineDevinfo guibg=#050505")
		vim.cmd("hi MiniTablineCurrent guibg=#050505 guifg=#FFA717")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")

		--vim.cmd'hi String guifg=#2CA198'
	end

	if color == "naysayer" then
		--vim.cmd("hi Normal guibg=#050505")
		--vim.cmd("hi NormalNC guibg=#050505")
		--vim.cmd("hi LineNr guibg=#050505")
		--vim.cmd("hi TelescopeNormal guibg=#050505")
		--vim.cmd("hi TelescopeBorder guibg=#050505")
		--vim.cmd("hi MiniPickNormal guibg=#050505")
		--vim.cmd("hi MiniPickBorder guibg=#050505")
		--vim.cmd("hi MiniPickPrompt guibg=#050505")
		--vim.cmd("hi MiniNotifyNormal guibg=#050505")
		--vim.cmd("hi MiniNotifyBorder guibg=#050505")
		--vim.cmd("hi MiniFilesNormal guibg=#050505")
		----vim.cmd("hi MiniStatuslineFilename guibg=#050505")
		----vim.cmd("hi MiniStatuslineDevinfo guibg=#050505")
		--vim.cmd("hi MiniTablineCurrent guibg=#151515")
		--vim.cmd("hi MiniTablineFill guibg=#050505")
		--vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		--vim.cmd("hi MiniTablineHidden guibg=#050505")
		--vim.cmd("hi MiniTablineVisible guibg=#050505")
		--vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
		----vim.cmd'hi String guifg=#2CA198'
	end

	if color == "lodestone" then
		vim.cmd("hi Special guifg=#87919D")
		vim.cmd("hi Operator guifg=#87919D")
		vim.cmd("hi Delimiter guifg=#87919D")
		vim.cmd("hi MiniStatuslineFilename guibg=#050505")
		vim.cmd("hi MiniStatuslineDevinfo guibg=#050505")
		vim.cmd("hi MiniTablineCurrent guibg=#151515")
		vim.cmd("hi MiniTablineFill guibg=#050505")
		vim.cmd("hi MiniTablineModifiedHidden guibg=#050505")
		vim.cmd("hi MiniTablineHidden guibg=#050505")
		vim.cmd("hi MiniTablineVisible guibg=#050505")
		vim.cmd("hi MiniTablineModifiedVisible guibg=#050505")
	end

	if color == "oshen-night" then
		vim.cmd("hi Normal guibg=#050505")
		vim.cmd("hi NormalNC guibg=#050505")
		vim.cmd("hi Comment guifg=#87919d")
		vim.cmd("hi @comment guifg=#87919d")
		vim.cmd("hi @lsp.type.comment guifg=#87919d")
		--vim.cmd("hi LineNr guibg=#050505")
		vim.cmd("hi LineNrAbove guifg=#87919d")
		vim.cmd("hi LineNrBelow guifg=#87919d")
		--vim.cmd'hi TabLine guifg=#e6dbd1'
		--vim.cmd'hi TabLineNC guifg=#151515'
		--vim.cmd'hi CursorLine guibg=#111144'
		--vim.cmd("hi Cursor guibg=#00ff33 guifg=#303030")
		--vim.cmd("hi cTodo guibg=#121212")
	end

	-- an attempt to remove italics from all themes
	-- TODO: Better way to do this
	local hl_groups = vim.api.nvim_get_hl(0, {})

	for key, hl_group in pairs(hl_groups) do
		if hl_group.italic then
			vim.api.nvim_set_hl(0, key, vim.tbl_extend("force", hl_group, { italic = false }))
		end
	end
end

return M
