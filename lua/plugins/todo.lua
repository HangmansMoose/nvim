return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
      require('todo-comments').setup {
        keywords = {
		    TODO = { color = "#ff0000" },
		    HACK = { color = "#ff6600" },
		    NOTE = { color = "#008000" },
		    FIXME = { color = "#f06292" },
		    LEFTOFF = { color = "#ffff99" },
		    nocheckin = { color = "#ff00ff" },
	    },
        -- Pattern to hightlight the keywords
	    highlight = {
		    pattern = [[(KEYWORDS|keywords)\s*(\([^\)]*\))?:]],
		    keyword = "fg",
            after = "",
            before = "",
	    },
        gui_style = {
            fg = "BOLD",
        }
      }
  end,
}

