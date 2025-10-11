return{
        -- AWESOME
        'kaiuri/juliana.nvim',
        lazy = false,
        config = function()
            vim.cmd'hi Normal guibg=#151515'
            vim.cmd'hi NormalNC guibg=#151515'
            vim.cmd'hi LineNr guibg=#151515 guifg=#616161'
            vim.cmd'hi TabLine gui=NONE guibg=#151515'
            vim.cmd'hi TabLineSel guibg=#404040 guifg=#C5C8C6'
            vim.cmd'hi TabLineFill guibg=#151515'

        end,
}
