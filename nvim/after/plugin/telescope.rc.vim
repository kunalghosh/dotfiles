nnoremap <silent> ;f <Cmd>Telescope find_files<CR>
nnoremap <silent> ;w <Cmd>Telescope grep_string<CR>
nnoremap <silent> ;r <Cmd>Telescope live_grep<CR>
nnoremap <silent> ;b <Cmd>Telescope buffers<CR>
nnoremap <silent> ;t <Cmd>Telescope file_browser<CR>
nnoremap <silent> \\ <Cmd>Telescope buffers<CR>
nnoremap <silent> ;; <Cmd>Telescope help_tags<CR>

lua << EOF
local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
        },
      },
    }
}
EOF
