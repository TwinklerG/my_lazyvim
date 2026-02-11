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

      indent = {
        scope = {},
      },

      explorer = {},
      picker = {
        hidden = true,
        ignored = true,

        sources = {
          explorer = {
            layout = {
              layout = {
                width = 0.2,
              },
            },
          },
        },
      },
    },
  },
}
