return {
  {
    "folke/tokyonight.nvim",
    dependencies = {
      "utilyre/barbecue.nvim",
      "SmiteshP/nvim-navic",
      'nvim-tree/nvim-web-devicons',
      "nvim-lualine/lualine.nvim",
    },
    config = function ()
      vim.cmd[[colorscheme tokyonight]]
      require('lualine').setup({
        options = {
        theme = 'tokyonight'
        }
      })
      require('barbecue').setup{
        theme = 'tokyonight'
      }
    end
  }
}
