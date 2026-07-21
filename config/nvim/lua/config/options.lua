-- Options are automatically loaded before lazy.nvim startup
-- Default options:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Python provider
vim.g.python3_host_prog = vim.fn.expand("~/.venvs/neovim/bin/python")

-- Disable unused providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0

-- Better window management
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Better editing experience
vim.opt.colorcolumn = "120"
vim.opt.updatetime = 200
vim.opt.timeoutlen = 300
vim.opt.confirm = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Persistent undo
vim.opt.undofile = true
