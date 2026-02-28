local custom_header = {
  [[███   ▄███▄      ▄    ▄▄▄▄▄ ▄█ █     ▄███▄     ▄▀     ▄   ██   █▄▄▄▄ ██▄   ]],
  [[█  █  █▀   ▀      █ ▄▀  █   ██ █     █▀   ▀  ▄▀        █  █ █  █  ▄▀ █  █  ]],
  [[█ ▀ ▄ ██▄▄    ██   █    █   ██ █     ██▄▄    █ ▀▄  ██   █ █▄▄█ █▀▀▌  █   █ ]],
  [[█  ▄▀ █▄   ▄▀ █ █  █ ▄ █    ▐█ ███▄  █▄   ▄▀ █   █ █ █  █ █  █ █  █  █  █  ]],
  [[███   ▀███▀   █  █ █  ▀      ▐     ▀ ▀███▀    ███  █  █ █    █   █   ███▀  ]],
  [[              █   ██                               █   ██   █   ▀          ]],
  [[                                                           ▀               ]],
}

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
  config = function()
    require("dashboard").setup({
      theme = "doom",
      config = {
        header = custom_header,
        week_header = {
          enable = false,
        },
        center = {
          {
            action = "Telescope find_files",
            desc = " Find File",
            icon = " ",
            key = "f",
          },
          {
            action = "ene | startinsert",
            desc = " New File",
            icon = " ",
            key = "n",
          },
          {
            action = "Telescope oldfiles",
            desc = " Recent Files",
            icon = " ",
            key = "r",
          },
          {
            action = "Telescope live_grep",
            desc = " Find Text",
            icon = " ",
            key = "g",
          },
          {
            action = "e ~/.config/nvim/ | cd %:p:h",
            desc = " Config",
            icon = " ",
            key = "c",
          },
          {
            action = 'lua require("persistence").load()',
            desc = " Restore Session",
            icon = " ",
            key = "s",
          },
          {
            action = "Mason",
            desc = " Mason",
            icon = " ",
            key = "m",
          },
          {
            action = "Lazy",
            desc = " Lazy",
            icon = "󰒲 ",
            key = "l",
          },
          {
            action = function()
              vim.api.nvim_input("<cmd>qa<cr>")
            end,
            desc = " Quit",
            icon = " ",
            key = "q",
          },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          local version = vim.version()
          local nvim_version_info = "v" .. version.major .. "." .. version.minor .. "." .. version.patch
          return {
            "⚡ Neovim "
            .. nvim_version_info
            .. " loaded "
            .. stats.loaded
            .. "/"
            .. stats.count
            .. " plugins in "
            .. ms
            .. "ms",
          }
        end,
        vertical_center = true,
      },
    })
  end,
}
