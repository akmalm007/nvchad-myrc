local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    php = {
      require("formatter.filetypes.php").php_cs_fixer
    },
    yaml = {
     require("formatter.filetypes.yaml").prettierd
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whites
    }
  }
}

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  command = "FormatWriteLock"
})

return M
