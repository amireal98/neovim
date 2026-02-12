return {
  "aikhe/cake.nvim",
  dependencies = "nvzone/volt",
  cmd = { "CakeToggle", "CakeFloat", "CakeSplitV", "CakeSplitH", "CakeRun" },
  opts = {
    terminal = "",
    title = " cake.nvim",
    border = true,
    use_file_dir = false,
    mode = "float",
    size = { h = 60, w = 50 },
    split = { w = 50, h = 25 },
    mappings = {
      new_tab = "n",
      edit_commands = "m",
      edit_cwd = ";",
      rerun = "r",
      kill_tab = "x",
      next_tab = "<C-n>",
      prev_tab = "<C-p>",
    },
    split_nav = {
      h = { "<C-h>" },
      j = { "<C-j>" },
      k = { "<C-k>" },
      l = { "<C-l>" },
    },
  },
}
