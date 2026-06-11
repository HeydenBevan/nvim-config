local lst_utils = require("utils.lists")

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  config = function()
      local ts_langs = {
          "lua",
          "bash",
          "toml",
          "yaml",
          "xml",
          "json",
          "html",
          "git_config",
          "gitcommit",
          "c_sharp",
          "javascript"
      }

      local ts = require("nvim-treesitter")
      ts.install(ts_langs)

      local installed_ts_langs = ts.get_installed()
      local filetypes = {}
      for _, tsl in pairs(installed_ts_langs) do
          local fts = vim.treesitter.language.get_filetypes(tsl)
          for _, l in pairs(fts) do
              filetypes[#filetypes + 1] = l
          end
      end

      vim.api.nvim_create_autocmd("FileType", {
          pattern = filetypes,
          callback = function(args)
              vim.treesitter.start(args.buf)
          end
      })
  end
}
