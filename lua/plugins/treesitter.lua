return {
	{
		"taku25/tree-sitter-unreal-cpp",
		opts = {},
		config = function() end,
	},
	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs", -- Sets main module to use for opts
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter
		opts = {
			-- Autoinstall languages that are not installed
			install = {
				compilers = { "zig", "clang" },
			},
			ensure_installed = {
                "regex",
				"python",
				"lua",
				"yaml",
				"toml",
				"json",
				"javascript",
				"c",
				"cpp",
				"c_sharp",
				"rust",
				"zig",
				"markdown",
			},
			auto_install = true,
			highlight = {
				enable = false,
			},
			-- There are additional nvim-treesitter modules that you can use to interact
			-- with nvim-treesitter. You should go explore a few and see what interests you:
			--
			--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
			--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
			--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
		},
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release -DCMAKE_POLICY_VERSION_MINIMUM='3.5' && cmake --build build --config Release",
	},
}
