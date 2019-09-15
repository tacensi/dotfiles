execute pathogen#infect()

syntax on
filetype plugin indent on

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

" Change leader to space
let mapleader=" "

" set new split to right and below
set splitbelow
set splitright

" `matchit.vim` is built-in so let's enable it!
" " Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move around and `<CR>` to validate.

" visual clue for <leader>
set showcmd

" Set spell check on markdown
autocmd BufRead,BufNewFile *.md setlocal spell

" Display extra white space
set list listchars=tab:»·,trail:·,nbsp:·

" Only one space after punctuation
set nojoinspaces

" remaps
nnoremap <Leader><Leader> <C-^> " Switch between files
" move between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Always use vertical diffs
set diffopt+=vertical

" relative line numbers
set number
set relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set undodir=~/.vim/undordir
