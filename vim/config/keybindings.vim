"" General keybindings
""
" Konami code for vim
noremap <up> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <left> <nop>
noremap <right> <nop>
" B A <start>

" move between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

nnoremap <Leader><Leader> <C-^> " Switch between files

" Search results centered on screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" Coc mappints
" navigate sugestions with tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" select completion with cr
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Close plum after selection
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

