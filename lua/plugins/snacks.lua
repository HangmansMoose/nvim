return {
	"folke/snacks.nvim",
	priority = 1000,
    enabled = true,
	lazy = false,
	---@type snacks.Config
    keys = {
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		{
			"<leader>n",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Notification History",
		},
    },
    opts = {
	    explorer = { 
            enabled = true,
            hidden = true,
            ignored = true
            
        },
	    notifier = { enabled = true },
	    picker = { enabled = false },
        image =  {
            enabled = true,
            -- Wezterm does not support inline 
            inline = false,
            float = true 
        },
	    dashboard = {
	    	enabled = true,
            keys = {
                { icon = " ", key = "f", desc = "Find File", action = ":Telescope find_files" },
                { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                { icon = " ", key = "g", desc = "Find Text", action = ":Telescope live_grep" },
                { icon = " ", key = "r", desc = "Recent Files", action = ":Telescope oldfiles" },
                { icon = " ", key = "c", desc = "Config", action = ":lua require'telescope.buildtin'.find_files({cwd = vim.fn.stdpath('config')}))" },
                { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
            preset = {
                header = [[                                                     
	                                                                     
       ████ ██████           █████      ██                     
      ███████████             █████                             
      █████████ ███████████████████ ███   ███████████   
     █████████  ███    █████████████ █████ ██████████████   
    █████████ ██████████ █████████ █████ █████ ████ █████   
  ███████████ ███    ███ █████████ █████ █████ ████ █████  
 ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],                                                                       
            },
		},
        sections = {
            { section = "header" },
            { section = "keys", gap = 1, padding =1 },
            { section = "startup" },
        }
    },
}
		


