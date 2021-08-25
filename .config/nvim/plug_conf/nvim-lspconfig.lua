-- LSP Config
-- Most keybinds in lsp_keybinds.vim

-- Tweaking what is visible from the automatic diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        signs = true,
        underline = true,
        update_in_insert = false,
        }
    )

