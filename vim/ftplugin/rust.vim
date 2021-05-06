let g:ale_completion_enabled = 0

let g:ale_linters = {
\ 'rust': ['analyzer'],
\}

let g:ale_fixers = {
 \   'rust': ['rustfmt'],
\}

" Automatically format files on save
let g:rustfmt_autosave = 1

" Local mappings
nnoremap <silent> cb :Cbuild<cr>
nnoremap <silent> cc :Ccheck<cr>
nnoremap <silent> ct :Ctest<cr>
nnoremap <silent> cr :Crun<cr>

