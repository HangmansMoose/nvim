vim.pack.add { 
	"https://github.com/folke/snacks.nvim" 
}

require('snacks').setup {
    explorer = { enabled = true },
}

vim.keymap.set('n', '<leader>e', '<cmd>lua Snacks.explorer()<cr>', { desc = "Snacks Explorer"})
