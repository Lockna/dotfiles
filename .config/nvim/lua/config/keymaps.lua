local function map(mode, lhs, rhs, opts)
	local options = { noremap=true, silent=true }
	if opts then
	  options = vim.tbl_extend('force', options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-----------------
-- Normal mode --
-----------------

-- Saving with <leader> and s
map("n", "<leader>w", ":write<CR>")

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Resize with arrows
-- delta: 2 lines
map('n', '<C-Up>', ':resize -2<CR>')
map('n', '<C-Down>', ':resize +2<CR>')
map('n', '<C-Left>', ':vertical resize -2<CR>')
map('n', '<C-Right>', ':vertical resize +2<CR>')

map({ "n", "v" }, "<leader>y", '"+y')

-----------------
-- Visual mode --
-----------------


-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>')        -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- TeleScope
map("n", "<leader>ff", ":Telescope find_files<CR>") -- open telescope file manager
map("n", "<leader>fg", ":Telescope live_grep<CR>")  -- open telescope file manager
map("n", "<leader>fb", ":Telescope buffers<CR>")    -- open telescope file manager
map("n", "<leader>fh", ":Telescope help_tags<CR>")  -- open telescope file manager

-- ToggleTerm
map("n", <C-\><M, ":ToggleTerm")