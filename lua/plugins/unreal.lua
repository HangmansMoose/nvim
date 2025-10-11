return {
	-- Core library (essential)
	{
		"taku25/UNL.nvim",
		opts = {
			ui = {
				picker = { "telescope" },
				filer = { "neo-tree" },
			},
		}, -- Add any UNL.nvim specific options here
	},

	-- UBT.nvim (Build Tool Integration)
	{
		"taku25/UBT.nvim",
		dependencies = {
			"taku25/UNL.nvim", -- Dependency on the core library
			"nvim-telescope/telescope.nvim", -- For interactive error picking
			--"https://github.com/ibhagwan/fzf-lua", -- or fzf-lua for interactive error picking
		},
		ft = { "cpp", "h" }, -- Only load for C++ files (optional)
		opts = {}, -- UBT.nvim specific options
	},

	-- UCM.nvim (Class Creation)
	{
		"taku25/UCM.nvim",
		dependencies = {
			"taku25/UNL.nvim",
			"nvim-telescope/telescope.nvim",
			--"https://github.com/ibhagwan/fzf-lua", -- or fzf-lua for interactive picking
		},
		ft = { "cpp", "h" },
		opts = {}, -- UCM.nvim specific options
	},

	-- ULG.nvim (Log Viewer & Console)
	{
		"taku25/ULG.nvim",
		dependencies = { "taku25/UNL.nvim" },
		opts = {}, -- ULG.nvim specific options
		--"https://github.com/ibhagwan/fzf-lua", -- or fzf-lua for interactive picking
	},

	-- UEP.nvim (Project-wide Search & Grep)
	{
		"taku25/UEP.nvim",
		dependencies = {
			"taku25/UNL.nvim",
			"nvim-telescope/telescope.nvim",
			--"https://github.com/ibhagwan/fzf-lua", -- or fzf-lua for interactive picking
		},
		ft = { "cpp", "h" },
		opts = {}, -- UEP.nvim specific options
	},

	-- neo-tree-unl.nvim (Neo-tree integration)
	{
		"taku25/neo-tree-unl.nvim",
		dependencies = {
			"taku25/UNL.nvim",
		},
		opts = {}, -- neo-tree-unl.nvim specific options
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
			{ "taku25/neo-tree-unl.nvim" },
		},
		opts = {
			sources = {
				"filesystem",
				"buffers",
				"git_status",
				"neo-tree.sources.uproject",
				"neo-tree.sources.insights",
			},
			source_selector = {
				winbar = true,
				sources = {
					{ source = "filesystem", display_name = "filesystem" },
					{ source = "uproject", display_name = "uproject" },
					{ source = "insights", display_name = "insights" },
				},
			},
		},
	},
}
