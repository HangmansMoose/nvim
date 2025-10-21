return {
	{
		"gopyts/darcubox-nvim",
		lazy = false,
	},
	{
		"mikesmithgh/gruvsquirrel.nvim",
		lazy = false,
	},
	{
		"logannday/gruber-darker-nvim",
		lazy = false,
	},
	{
		"bluz71/vim-nightfly-colors",
		lazy = false,
	},
	{
		"bluz71/vim-moonfly-colors",
		lazy = false,
	},
	{
		"Shatur/neovim-ayu",
		lazy = false,
	},
	{
		"NTBBloodbath/doom-one.nvim",
		lazy = false,
	},
	{
		"Lokaltog/vim-distinguished",
		lazy = false,
	},
	{
		"HoNamDuong/hybrid.nvim",
		lazy = false,
	},

	{ "vim-scripts/newsprint.vim", lazy = false },
	{ "gbprod/nord.nvim", lazy = false },
	{ "slugbyte/lackluster.nvim", lazy = false },
	{ "vim-scripts/zenesque.vim", lazy = false },
	{ "jaredgorski/fogbell.vim", lazy = false },
	{ "oahlen/iceberg.nvim", lazy = false },
	{ "Skardyy/makurai-nvim", lazy = false },
	{ "jnurmine/Zenburn", lazy = false },
	{ "RRethy/base16-nvim", lazy = false },
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.g.gruvbox_material_background = "hard"
		end,
	},
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		italic = false,
	},
	{
		"vague2k/vague.nvim",
		lazy = false,
		config = function()
			require("vague").setup({
				-- optional configuration here
				-- transparent = true,
				style = {
					-- "none" is the same thing as default. But "italic" and "bold" are also valid options
					boolean = "none",
					number = "none",
					float = "none",
					error = "none",
					comments = "none",
					conditionals = "none",
					functions = "none",
					headings = "bold",
					operators = "none",
					strings = "none",
					variables = "none",

					-- keywords
					keywords = "none",
					keyword_return = "none",
					keywords_loop = "none",
					keywords_label = "none",
					keywords_exception = "none",

					-- builtin
					builtin_constants = "none",
					builtin_functions = "none",
					builtin_types = "none",
					builtin_variables = "none",
				},
				colors = {
					-- func = "#bc96b0",
					-- keyword = "#787bab",
					-- -- string = "#d4bd98",
					-- string = "#8a739a",
					-- -- string = "#f2e6ff",
					-- -- number = "#f2e6ff",
					-- -- string = "#d8d5b1",
					-- number = "#8f729e",
					-- -- type = "#dcaed7",
				},
			})
		end,
	},
}
