return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          "clangd",
          "--query-driver=/opt/homebrew/bin/g++-15",
          "--background-index",
          "--header-insertion=never",
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              -- 告诉语言服务器 vim 是全局变量
              globals = { "vim" },
            },
            workspace = {
              -- 让服务器知道 Neovim 运行时的库文件
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
          },
        },
      },
    },
  },
}
