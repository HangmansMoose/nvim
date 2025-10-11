local M = {
    "akinsho/bufferline.nvim",
    lazy = false,
}

M.keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
    { "<leader>tp", "<cmd>BufferLinePick<CR>", desc = "Tab Picker" },
}

function M.config()
    local bufferline = require("bufferline")
    bufferline.setup ({
        options = {
            separator_style = 'slant',
            show_close_icon = false,
            show_buffer_close_icons = false,
            style_preset = bufferline.style_preset.no_italic,
            always_show_bufferline = true,
            offsets = {
              {
                filetype = "neo-tree",
                text = "Neo-tree",
                highlight = "Directory",
                text_align = "center",
              },
              {
                filetype = "snacks_layout_box",
              },
            },
        },
    })
end

return M
