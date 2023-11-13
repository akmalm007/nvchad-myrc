local M = {}

M.general = {
  n = {
    --Vim and tmux navigation    
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
    --ZZ command 
    ["J"] = {"mzJ`z" },
    ["<C-d>"] = {"<C-d>zz"},
    ["<C-u>"] = {"<C-u>zz"},
    ["n"] = {"nzzzv"},
    ["N"] = {"Nzzzv"},
    --SO with nvim
    ["<leader><leader>"] = {
      function ()
        vim.cmd("so")
      end,
      "Source the File"
    },
  }
}


return M
