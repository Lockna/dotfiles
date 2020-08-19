call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'itchyny/vim-cursorword'
Plug 'tpope/vim-surround'
Plug 'shirohana/auto-pairs' 
Plug 'mboughaba/i3config.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'vifm/vifm.vim'
Plug 'derekwyatt/vim-scala'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
call plug#end()

set shell=/usr/bin/zsh
syntax on
set t_Co=256
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
au BufRead,BufNewFile *.sbt set filetype=scala
let mapleader = '\'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set number relativenumber
set background=dark
set termguicolors

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
map <Leader>vv :Vifm<CR> 
map <Leader>vs :VsplitVifm<CR> 
map <Leader>sp :SplitVifm<CR> 
map <Leader>dv :DiffVifm<CR> 
map <Leader>tv :TabVifm<CR>
