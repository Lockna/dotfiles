-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--


lvim.plugins = {

  { "catppuccin/nvim", name = "catppuccin" },
  { "projekt0n/github-nvim-theme" },
  { "folke/tokyonight.nvim" },
  { "EdenEast/nightfox.nvim" },

}

lvim.colorscheme = 'catppuccin-mocha'

lvim.format_on_save.enabled = true

lvim.autocommands = {
  {
    { "BufEnter", "BufWinEnter" },
    {
      group = "lvim_user",
      pattern = { "*.lua", "*.cpp", "*.hpp", "*.c", "*.h" },
      command = "setlocal ts=4 sw=4",
    }
  },
}
