-- /home/stevearc/.config/nvim/lua/overseer/template/user/cpp_build.lua
return {
  name = "odin build",
  builder = function()
    -- Full path to current file (see :help expand())
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "just", "build" },
      -- attach a component to the task that will pipe the output to the quickfix.
      -- components customize the behavior of a task.
      -- see :help overseer-components for a list of all components.
      components = { { "on_output_quickfix", open = true }, 
					   "on_result_diagnostics",
					   "default" 
	  },
    }
  end,
  -- provide a condition so the task will only be available when you are in a c++ file
  condition = {
    filetype = { "odin" },
  },
}
