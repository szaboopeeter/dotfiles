local dapGo = require('dap-go')
local dapui = require('dapui')
local dap = require('dap')
local dapVirtualText = require('nvim-dap-virtual-text')

vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>", {silent = true})
vim.keymap.set("n", "<F9>", ":lua require'dap'.step_into()<CR>", {silent = true})
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>", {silent = true})
vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>", {silent = true})
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", {silent = true})
vim.keymap.set("n", "<leader>B", ":lua require'dap'.toggle_breakpoint(vim.fn.input('Breakpoint condition: ')<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", {silent = true})


dapGo.setup({
    on_attach = function()
    end
})

dapui.setup()
dapVirtualText.setup()

dap.listeners.after.event_initialized["dapui_config"] = function ()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function ()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function ()
    dapui.close()
end
