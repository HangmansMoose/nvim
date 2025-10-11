vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>')
vim.opt.shell = "pwsh"

TermJobId = 0

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
    TermJobId = vim.bo.channel
  end,
})

-- small terminal
vim.keymap.set('n', '<leader>st', function()
  vim.cmd.vnew() -- new split
  vim.cmd.term() -- opens terminal in new split
  vim.cmd.wincmd 'J' -- puts the window at the bottom
  vim.api.nvim_win_set_height(0, 15) -- rows and columns not pixels
end)

local state = {
  static = {
	  buf = -1,
	  win = -1
  },
  floating = {
    buf = -1,
    win = -1,
  },
}

local function create_floating_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate the position to center the window
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- Define window configuration
  local win_config = {
    relative = 'editor',
    width = width,
    height = height,
    col = col,
    row = row,
    style = 'minimal', -- No borders or extra UI elements
    border = 'rounded',
  }

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, win_config)

  return { buf = buf, win = win }
end

local function create_static_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.5)
  local height = opts.height or math.floor(vim.o.lines * 0.3)

  -- Calculate the position to center the window
  --local col = math.floor((vim.o.columns - width) / 2)
  --local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- Define window configuration
  local win_config = {
	  split = 'below',
	  win = 0,
	  width = width,
	  height = height
  }


  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, win_config)

  return { buf = buf, win = win }
end


local toggle_static_terminal = function()
	if not vim.api.nvim_win_is_valid(state.static.win) then
	  state.static = create_static_window { buf = state.static.buf }
	  if vim.bo[state.static.buf].buftype ~= 'terminal' then
		vim.cmd.term()
		TermJobId = vim.bo.channel
	  end
    else
      vim.api.nvim_win_hide(state.static.win)
    end
end

local toggle_floating_terminal = function()
 
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= 'terminal' then
      vim.cmd.term()
      TermJobId = vim.bo.channel
      print('job_id: ', TermJobId)
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

local function find_build_sh()
  local found = false
  while not found do
    if vim.fn.filereadable 'build.sh' then
        found = true
    else
        vim.cmd 'cd ..'
     end
  end
end

local function find_build_bat()
  local found = false
  while not found do
    if vim.fn.filereadable 'build.bat' then
       found = true 
    else
      vim.cmd 'cd ..'
    end
  end
end

local build_project = function()
  local os_name =  vim.loop.os_uname().sysname
  local file_ext = vim.fn.expand('%:e')
  if file_ext == 'cpp' or file_ext == 'c' or file_ext == 'h' or file_ext == 'hpp' or
     file_ext == 'rs' or file_ext == 'zig' or file_ext == 'zon' then
    local file_dir = vim.fn.expand('%:h')
	local changeDir = "cd " .. file_dir .. "\r\n"
	toggle_static_terminal()
	vim.fn.chansend(TermJobId, { changeDir })
    if os_name == "Linux" or os_name == "Darwin" or os_name == "OpenBSD" then
        find_build_sh()
	    vim.fn.chansend(TermJobId, { './build.sh\r\n' })
    elseif os_name == "Windows_NT" then
        find_build_bat()
	    vim.fn.chansend(TermJobId, { './build.bat\r\n' })
    else  
	    print("Can't figure out what operating system you are on")
    end
  end
end
-- helper functions to find and launch run debug.bat
local function find_debug_bat()
  if not vim.fn.filereadable 'debug.bat' then
    vim.cmd 'cd ../'
    find_debug_bat()
  end
end

local run_debug_bat = function()
	local cwd = vim.fn.getcwd()
	local changeDir = "cd " .. cwd .. "\r\n"
	toggle_static_terminal()
	vim.fn.chansend(TermJobId, { changeDir })
	find_debug_bat()
	vim.fn.chansend(TermJobId, {'./debug.bat\r\n' })
	toggle_static_terminal()
end


-- Example usage:
-- Create a floating window with default dimensions
vim.api.nvim_create_user_command('Floaterminal', toggle_floating_terminal, {})
vim.api.nvim_create_user_command('StaticTerminal', toggle_static_terminal, {})
vim.keymap.set({ 'n', 't' }, '<space>tf', toggle_floating_terminal)
vim.keymap.set({ 'n', 't' }, '<space>t', toggle_static_terminal)
vim.keymap.set({ 'n', 't' }, '<space>m', build_project)
vim.keymap.set({ 'n', 't' }, '<space>r', run_debug_bat)
