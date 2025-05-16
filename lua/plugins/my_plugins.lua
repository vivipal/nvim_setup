local plugins = {

  -- Install a plugin
  {
    'echasnovski/mini.surround',
    version = '*',
    lazy = false,
    config = function()
      require('mini.surround').setup()
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  {
    "mg979/vim-visual-multi",
    init = function()
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps = {
        ['Find Under'] = "<C-d>",
        ['Find Subword Under'] = "<C-d>",
        ['Select Cursor Down'] = "<M-C-j>",
        ['Select Cursor Up'] = "<M-C-k>",

      }
    end,

    lazy = false,
  },

  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
  },

  -- {
  --  'VonHeikemen/fine-cmdline.nvim',
  --
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   
  -- },
  --
  -- {
  --   "giusgad/pets.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
  --   require("pets").setup({
  --     -- your options here
  --     --
  --   })
  -- }

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
