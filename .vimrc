call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

set number
set relativenumber
set list
set listchars=tab:>-,trail:.,eol:$

autocmd VimEnter * NERDTree | wincmd l
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif

let NERDTreeShowHidden=1

let mapleader = ","
nnoremap <Leader>c :Commentary<CR>
vnoremap <Leader>c :Commentary<CR>
