-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {

  -- Adding Plugins

  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },

  -- Disabling default plugins
  { "NMAC427/guess-indent.nvim", enabled = false },
  { "lewis6991/gitsigns.nvim", enabled = false },
  { "JoosepAlviste/nvim-ts-context-commentstring", enabled = false },



  -- Overriding Plugins
  {
    "nvim-neo-tree/neo-tree.nvim",
      opts = {
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
          },
        },
      }
  },

  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = {
      options = {
        opt = {
          relativenumber = false,
          tabstop = 4,
          expandtab = true,
          softtabstop = 4, 
          shiftwidth = 4,
        },
      },
      mappings = {
        n = {
          -- Your new mapping goes here
          ["<C-t>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },
        },
        t =  {
          ["<C-t>"] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
        },
      },
    },
  },
}
