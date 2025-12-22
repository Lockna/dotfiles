return {
    {
       "nvim-lualine/lualine.nvim",
       dependencies = { "nvim-tree/nvim-web-devicons" },
       opts = {
          options = {
             theme = "catppuccin",
             globalstatus = true,
          },
          sections = {
             lualine_c = {},
          },
       },
       init = function()
          vim.opt.showmode = false
       end,
    },
 }