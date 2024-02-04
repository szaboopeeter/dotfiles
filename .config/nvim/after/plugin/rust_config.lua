local rt = require("rust-tools")

rt.setup({
    server = {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        on_attach = function(_, bufnr)
            vim.keymap.set("n", "<leader>h", rt.hover_actions.hover_actions, {buffer = bufnr})
            vim.keymap.set("n", "<leader>vca", rt.code_action_group.code_action_group, {buffer = bufnr})
            vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        end
    },
    tools = {
        hover_actions = {
            auto_focus = true,
        },
    },
})
