return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    opts = {
      indent = { enable = true },
      highlight = { enable = true },
      folds = { enable = false },
      ensure_installed = {
        "lua",
        "bash",
        "diff",
        "gitignore",
        "markdown",
        "c",
        "nix",
        "hyprlang",
      },
    },
  },
}
