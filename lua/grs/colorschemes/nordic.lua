return {

    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    opts = {
        italic_comments = false,
        swap_backgrounds = true,
        cursorline = {
            blend = 0.25,
        },
        on_highlight = function(highlights, _palette)
            for _, highlight in pairs(highlights) do 
                highlight.italic = false
            end
            highlights.CursorLine = { bg = '#111144' }
        end,

    }

}
