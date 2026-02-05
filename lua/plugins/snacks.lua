return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
      ]],
        },
      },

      explorer = {},
      picker = {
        hidden = true, -- hidden files ke liye
        ignored = true, -- .gitignore files ke liye
      },
    },
  },
}
