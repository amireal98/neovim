return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('lualine').setup {
        options = {
          disabled_filetypes = { statusline = { "snacks_dashboard" } },
          icons_enabled = false,
          theme = "auto",
          section_separators   = { left = '', right = '' },
          component_separators = { left = '', right = '' },
          refresh = {
            statusline = 1000,
            winbar = 1000,
            refresh_time = 16,
          },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch" },
          lualine_c = { "filename" },
          lualine_x = { "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      }
    end,
  },
}
