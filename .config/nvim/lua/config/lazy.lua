local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
    git = { log = { '--since=3 days ago' } },
    ui = { custom_keys = { false } },
    install = { colorscheme = { 'tokyonight' } },
    checker = { enabled = false },
}

return require("lazy").setup("plugins")