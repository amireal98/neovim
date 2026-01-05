return {
  {
    "zenbones-theme/zenbones.nvim",
    lazy = false,
    priority = 1000,
    dependencies = "rktjmp/lush.nvim",
    config = function()
      vim.g.zenbones_darken_comments = 45
      vim.cmd.colorscheme "zenbones"
    end,
  },
}
