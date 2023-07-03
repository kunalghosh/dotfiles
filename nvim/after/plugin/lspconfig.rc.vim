if !exists('g:lspconfig')
  finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  -- Mappings.
  local opts = { noremap = true, silent = true }
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

   --protocol.SymbolKind = { }
  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }
end

--require("lspconfig").pyright.setup({})

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  filetypes = { "python" }
  }

nvim_lsp.r_language_server.setup({})

local formatter = {
  formatcommand = "prettier_d_slim --stdin --stdin-filepath ${input}",
  formatstdin = true,
}
local linter = {
  lintcommand = "eslint_d -f visualstudio --stdin --stdin-filename ${input}",
  -- lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { "%f(%l,%c): %tarning %m", "%f(%l,%c): %rror %m" },
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true,
}
local languages = {
  --lua = {luafmt},
  typescript = { formatter, linter },
  javascript = { formatter, linter },
  typescriptreact = { formatter, linter },
  ["typescript.tsx"] = { formatter, linter },
  javascriptreact = { formatter, linter },
  ["javascript.jsx"] = { formatter, linter },
  vue = { formatter, linter },
  yaml = { formatter },
  json = { formatter },
  html = { formatter },
  scss = { formatter },
  css = { formatter },
  markdown = { formatter },
}

nvim_lsp.eslint.setup({
      filetypes = vim.tbl_keys(languages),
      init_options = {
        documentFormatting = true,
      },
      settings = {
        lintDebounce = 500,
        languages = languages,
      },
    on_attach = function(client, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end,
})


-- nvim_lsp.pyls_ms.setup {
-- 
--   on_attach = on_attach,
--   filetypes = { "python" }
--   }
-- nvim_lsp.pyls.setup {
--  on_attach = on_attach,
--  filetypes = { "python" }
--  }

-- vim.lsp.set_log_level("debug")

-- https://github.com/kabouzeid/nvim-lspinstall#advanced-configuration-recommended

EOF
