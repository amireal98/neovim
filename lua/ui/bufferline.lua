return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        mode = "buffers",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
          icon = '▎',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '● ',
        close_icon = '󰅖',
        left_trunc_marker = ' ',
        right_trunc_marker = ' ',
      },
    },
  },
}
