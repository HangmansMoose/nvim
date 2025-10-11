-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})


-- Turn off the LSP when in a specific directory, mainly using this for Handmade Hero
-- as it uses a unity build system which does not play well with clang

--vim.api.nvim_create_autocmd('FileType', {
--    pattern = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
--    callback = function(args)
--        local exclude_dir = 'G:/Code/HHFollow' -- Use double backslashes for Windows
--        local fname = vim.api.nvim_buf_get_name(args.buf)
--        if fname:find(exclude_dir) then
--            -- Prevent clangd from starting by not calling vim.lsp.enable
--            vim.lsp.stop_client(vim.lsp.get_clients({ name = 'clangd', bufnr = args.buf }))
--            return
--        end
--        -- Start clangd for files outside the excluded directory
--        vim.lsp.enable('clangd', { bufnr = args.buf })
--    end,
--    group = vim.api.nvim_create_augroup('ClangdControl', { clear = true }),
--})
























