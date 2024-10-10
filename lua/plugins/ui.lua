return {
  {
    "akinsho/bufferline.nvim",
    config = true
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
      require("ibl").setup()
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    }
    end
  },
  {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  },
  {
    "RRethy/vim-illuminate",
    config = function ()
      require('illuminate').configure()
    end
  }
}
