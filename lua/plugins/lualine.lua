return {

    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config =  function()
        local custom_auto = require('lualine.themes.auto')
        if vim.loop.os_uname().sysname == "Windows_NT" then
            custom_auto.normal.b.bg = "#151515"
            custom_auto.normal.c.bg = "#151515"

            custom_auto.insert.b.bg = "#151515"
            custom_auto.insert.c.bg = "#151515"

            custom_auto.replace.b.bg = "#151515"
            custom_auto.replace.c.bg = "#151515"

            custom_auto.command.b.bg = "#151515"
            custom_auto.command.c.bg = "#151515"

            custom_auto.visual.b.bg = "#151515"
            custom_auto.visual.c.bg = "#151515"
        else 
            custom_auto.normal.b.bg = "none"
            custom_auto.normal.c.bg = "none"

            custom_auto.insert.b.bg = "none"
            custom_auto.insert.c.bg = "none"

            custom_auto.replace.b.bg = "none"
            custom_auto.replace.c.bg = "none"

            custom_auto.command.b.bg = "none"
            custom_auto.command.c.bg = "none"

            custom_auto.visual.b.bg = "none"
            custom_auto.visual.c.bg = "none"
        end
        require('lualine').setup {

            options = {
                theme = custom_auto, 
                globalstatus = true,
            },
            sections = {
                lualine_c = {
                    {
            	        "filename",
            	    	path = 3,
                    }
            	},
            },
        }
    end
}
