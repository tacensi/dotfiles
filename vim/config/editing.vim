scriptencoding utf-8
set encoding=utf-8

" Automatically indent lines, and try to do it intelligently
set autoindent
set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start " Proper backspace behavior.
" nav keys shoud also wrap
set whichwrap+=<,>,h,l

" Display extra white space
set list listchars=tab:›\ ,nbsp:·,eol:¬,trail:☠,extends:»,precedes:«
hi NonText ctermfg=25 guifg=#4a4a59
hi SpecialKey ctermfg=25 guifg=#4a4a59


" wrap lines rather than make use of the horizontal scrolling
set wrap
" try not to wrap in the middle of a word
set linebreak
" use an 80-character line limit
set textwidth=80

" Automatically restore cursor position when possible
autocmd BufReadPost *
   \ if line("'\"") > 1 && line("'\"") <= line("$") |
   \ exe "normal! g`\"" |
   \ endif

" % to bounce from do to end etc.
runtime! macros/matchit.vim


" Automatically reload a file if it's changed outside of vim (or in another window)
set autoread

" Set spell check on markdown
autocmd BufRead,BufNewFile *.md setlocal spell

