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


-- Helper function for LspAttach checking if I have disabled clangd
local function disable_clangd()
    local cwd = vim.fn.getcwd()
    local path_sep = package.config:sub(1, 1) -- '/' on Unix, '\' on Windows

    local function exists(path)
        return vim.fn.filereadable(path) == 1
    end

    while cwd and #cwd > 0 do
        local candidate = cwd .. path_sep .. ".no-clangd"
        if exists(candidate) then
            return true
        end
        local parent = vim.fn.fnamemodify(cwd, ":h")
        if parent == cwd then
            break
        end
        cwd = parent
    end

    return false
end

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client.name == "clangd" then
            if disable_clangd() then
                client.stop() -- disable for that folder
            end
        end
    end
})
