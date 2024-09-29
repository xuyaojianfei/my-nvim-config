return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
  opts = {
        -- configuration goes here
    cn = {
      enabled = true
    },
    lang = "python3",
    storage = {
      home = "~/leetcode",
      cache = "~/leetcode"
    }
  },
}
