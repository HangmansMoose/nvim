return {
	--{
	--    'nvim-telescope/telescope.nvim',
	--    dependencies = { 'nvim-lua/plenary.nvim' },
	--    opts = {
	--        pickers = {
	--            find_files = {
	--                layout_config = {
	--                    prompt_position = 'top',
	--                },
	--                sorting_strategy = 'ascending',
	--            }
	--        }
	--    }
	--}
	"nvim-telescope/telescope.nvim",
	cmd = { "Telescope" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		"nvim-telescope/telescope-symbols.nvim",
		"xiyaowong/telescope-emoji.nvim",
		"debugloop/telescope-undo.nvim",
		"crispgm/telescope-heading.nvim",
	},
	keys = {
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
		{
			"<leader>fc",
			":lua require'telescope.builtin'.find_files({ cwd = vim.fn.stdpath('config')})<cr>",
			desc = "Find Config Files",
		},
		{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Find Diagnostics" },
		{ "<leader>fe", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Word" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
		{ "<leader>fi", "<cmd>Telescope import<cr>", desc = "Find Imports" },
		{ "<leader>fj", "<cmd>Telescope emoji<cr>", desc = "Find emoji" },
		{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Find Keymaps" },
		{ "<leader>fl", "<cmd>Telescope highlights<cr>", desc = "Find Highlights" },
		{ "<leader>fm", "<cmd>Telescope heading<cr>", desc = "Find Heading" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recently opened files" },
		{ "<leader>fp", "<cmd>Telescope spell_suggest<cr>", desc = "Find Spell Suggest" },
		{ "<leader>fq", "<cmd>Telescope quickfix<cr>", desc = "Find Quickix" },
		{ "<leader>fr", "<cmd>Telescope grep_string<cr>", desc = "Find Word Under Cursor" },
		{ "<leader>fs", "<cmd>Telescope symbols<cr>", desc = "Find Symbols" },
		{ "<leader>ft", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
		{ "<leader>fu", "<cmd>Telescope undo<cr>", desc = "Find Undo" },
		{ "<leader>fy", "<cmd>Telescope yank_history<cr>", mode = { "n", "x" }, desc = "Find yanks" },
		{ "<leader>fz", "<cmd>Telescope zoxide list<cr>", desc = "Find Directory" },
	},
	config = function()
		local actions = require("telescope.actions")
		local action_layout = require("telescope.actions.layout")
		local fb_actions = require("telescope").extensions.file_browser.actions

		require("telescope").setup({
			defaults = {
				prompt_prefix = "   ",
				selection_caret = "▎ ",
				multi_icon = " │ ",
				winblend = 0,
				borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				mappings = {
					i = {
						["<M-p>"] = action_layout.toggle_preview,
						["<S-down>"] = actions.preview_scrolling_down,
						["<S-up>"] = actions.preview_scrolling_up,
					},
					n = {
						["q"] = require("telescope.actions").close,
						["<M-p>"] = action_layout.toggle_preview,
						["<S-down>"] = actions.preview_scrolling_down,
						["<S-up>"] = actions.preview_scrolling_up,
					},
				},
				-- preview = {
				--     hide_on_startup = true,
				-- },
				file_ignore_patterns = {
					"^libs/",
					"^includes/",
					"^build/",
					"^Build/",
					"%.lib",
					"%.so",
					"%.exe",
					"%.pdb",
					"%.rdi",
					"%.obj",
				},
			},
			pickers = {
				buffers = {
					previewer = false,
					theme = "dropdown",
					mappings = {
						n = {
							["<C-e>"] = "delete_buffer",
							["l"] = "select_default",
						},
					},
					initial_mode = "normal",
				},
				find_files = {
					-- theme = 'ivy', -- 'ivy', 'dropdown', 'cursor'
					-- layout_strategy = 'vertical',
					-- layout_config = { height = 0.9 },
					-- previewer = false,
					path_display = { "smart" },
					layout_config = {
						prompt_position = "top",
						preview_width = 0.5,
						-- width = 0.7,
					},
					sorting_strategy = "ascending",
				},
				help_tags = {
					theme = "ivy",
				},
				symbols = {
					theme = "dropdown",
				},
				registers = {
					theme = "ivy",
				},
				grep_string = {
					initial_mode = "normal",
					theme = "ivy",
				},
				live_grep = {
					theme = "ivy",
				},
			},
			extensions = {
				file_browser = {
					dir_icon = "",
					prompt_path = true,
					grouped = true,
					theme = "dropdown",
					initial_mode = "normal",
					previewer = false,
					mappings = {
						n = {
							["o"] = "select_default",
							["H"] = fb_actions.toggle_hidden,
							["h"] = fb_actions.goto_parent_dir,
							["l"] = "select_default",
						},
					},
				},
				undo = {
					initial_mode = "normal",
					side_by_side = true,
					theme = "ivy",
					layout_config = {
						preview_width = 0.7,
					},
				},
				heading = {
					treesitter = true,
				},
				advanced_git_search = {
					diff_plugin = "diffview",
				},
			},
		})
	end,
}
