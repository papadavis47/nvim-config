return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- LazyVim's typescript extra runs vtsls and disables tsserver/ts_ls,
        -- so TS preferences must live here; merged into LazyVim's vtsls opts.
        vtsls = {
          settings = {
            typescript = {
              preferences = {
                importModuleSpecifier = "relative",
              },
            },
          },
        },
        tailwindcss = {
          filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
        },
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              usePlaceholders = true,
            },
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
              },
            },
          },
        },
        pyright = {},
        astro = {},
        marksman = {},
      },
    },
  },
}
