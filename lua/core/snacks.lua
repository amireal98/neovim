return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      indent       = { enabled = true },
      gh           = { enabled = true },
      quickfile    = { enabled = true },
      input        = { enabled = true },
      scope        = { enabled = true },
      words        = { enabled = true },
      bigfile      = { enabled = true },
      statuscolumn = { enabled = true },

      styles = {
        notification = {
          wo = { wrap = true },
        },

        zen = {
          enter = true,
          fixbuf = false,
          minimal = false,
          width = 110,
          height = 0,
          backdrop = { transparent = false, blend = 99 },
          keys = { q = false },
          zindex = 40,
          wo = { winhighlight = "NormalFloat:Normal" },
          w = { snacks_main = true },
        },
      },

      notifier = {
        enabled = true,
        timeout = 10000,
      },

      dashboard = {
        enabled = true,
        width = 60,
        row = nil,
        col = nil,
        pane_gap = 3,
        autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
        preset = {
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "Open Telescope", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "y", desc = "Open Yazi",      action = ":Yazi cwd" },
            { icon = " ", key = "q", desc = "Quit",           action = ":qa" },
          },
          header = [[
░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░]],
        },
      },

      lazygit = {
        enabled = true,
        configure = true,
        config = {
          os = { editPreset = "nvim-remote" },
          gui = {
            nerdFontsVersion = "3",
          },
        },
        win = { style = "Lazygit" },
        theme = {
          [241]                      = { fg = "Special" },
          activeBorderColor          = { fg = "MatchParen", bold = true },
          cherryPickedCommitBgColor  = { fg = "Identifier" },
          cherryPickedCommitFgColor  = { fg = "Function" },
          defaultFgColor             = { fg = "Normal" },
          inactiveBorderColor        = { fg = "FloatBorder" },
          optionsTextColor           = { fg = "Function" },
          searchingActiveBorderColor = { fg = "MatchParen", bold = true },
          selectedLineBgColor        = { bg = "Visual" },
          unstagedChangesColor       = { fg = "DiagnosticError" },
        },
      },

      zen = {
        enabled = true,
        ---@class snacks.zen.Config
        ---@type table<string, boolean>
        toggles = {
          dim = true,
          git_signs = false,
          mini_diff_signs = false,
        },
        center = true,
        show = {
          statusline = false,
          tabline = false,
        },
        ---@type snacks.win.Config
        win = {
          style = "zen",
        },
        ---@param win snacks.win
        on_open = function(win) end,
        ---@param win snacks.win
        on_close = function(win) end,
        ---@type snacks.zen.Config
        zoom = {
          toggles = {},
          center = false,
          show = {
            statusline = true,
            tabline = true,
            win = {
              backdrop = false,
              width = 0,
            },
          },
        },
      },

      scroll = {
        animate  = {
          duration = { step = 10, total = 200 },
          easing = "linear",
        },
        animate_repeat = {
          delay = 100,
          duration = { step = 5, total = 50 },
          easing = "linear",
        },
        filter = function(buf)
          return vim.g.snacks_scroll ~= false and vim.b[buf].snacks_scroll ~= false and vim.bo[buf].buftype ~= "terminal"
        end,
      },

      image = {
        enabled = true,
        formats = {
          "png",
          "jpg",
          "jpeg",
          "gif",
          "bmp",
          "webp",
          "tiff",
          "heic",
          "avif",
          "mp4",
          "mov",
          "avi",
          "mkv",
          "webm",
          "pdf",
          "icns",
        },
        force = false,
      },
    },

    keys = {
      -- notifications
      { "<leader>un", function() Snacks.notifier.hide()                 end, desc = "Dismiss all notifications" },
      -- git and github
      { "<leader>gp", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "Github Pull Requests" },
      { "<leader>gl", function() Snacks.lazygit()                       end, desc = "LazyGit" },
      -- terminal
      { "<leader>tt", function() Snacks.terminal()                      end, desc = "Toggle terminal", },
      -- zen mode
      { "<leader>z",  function() Snacks.zen()                           end, desc = "Toggle Zen mode", },
      { "<leader>Z",  function() Snacks.zen.zoom()                      end, desc = "Toggle Zoom" },
    },
  },
}
