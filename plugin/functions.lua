local toggle_header_cpp = function()
	local baseFilePath = vim.fn.expand('%:r')
	local currentFileExtension = vim.fn.expand('%:e')
	local switchToFileName

	if currentFileExtension == 'cpp' then
		switchToFileName = baseFilePath .. '.h'  
	elseif currentFileExtension == 'h' then
		switchToFileName = baseFilePath .. '.cpp'  
	else 
		print("Not a C/C++ file.")
		return
	end

	local openFileCmd = 'e ' .. switchToFileName
	
	vim.cmd(openFileCmd)
	
end

vim.keymap.set('n', '<A-h>', toggle_header_cpp, { desc = 'Switch between cpp and header file' })
