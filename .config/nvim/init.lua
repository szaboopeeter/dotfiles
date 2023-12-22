require("szaboopeeter")

vim.cmd [[
  autocmd VimEnter * if argc() == 0 | :Ex | endif
]]
