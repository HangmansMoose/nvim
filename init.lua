require("config.options")
require("config.autocmds")
require("config.keybinds")
require("config.lsp")
require("config.lazy")

-- Life would be easier if most of this was in a single file
-- hmmmmmm
-- TODO: ^
--local compile = require("compile-mode")
--local buildbat = require("utils.find_buildbat")
--
---- Helper to set compile command dynamically
--local function set_project_compile_command()
--    local bat = buildbat.find_buildbat()
--    if bat then
--        compile.set_command(string.format('cmd /C "%s"', bat))
--    else
--        print("No build.bat found in project hierarchy.")
--    end
--end
--
--vim.api.nvim_create_autocmd("BufEnter", {
--    pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
--    callback = function()
--        set_project_compile_command()
--    end,
--})


local colors = require("utils.colors")

colors.ColorMyPencils("gruber-darker")
