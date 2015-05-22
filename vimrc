set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'wincent/Command-T'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'embear/vim-localvimrc'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" No auto-comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

if has("gui_running")
   set guifont=Sauce\ Code\ Powerline:h13
endif

" Center
set so=999

"colorscheme gruvbox
"set bg=light

let g:solarized_termcolors=256
set background=light
colorscheme solarized

set number

set nocompatible
set backspace=2

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

" Tabs magic
set expandtab
set tabstop=4
set shiftwidth=4

let mapleader=","

set colorcolumn=120

au BufNewFile,BufRead *.sv set filetype=verilog

" YCM
let g:ycm_confirm_extra_conf = 0

"Tagbar
let g:tagbar_width=50
nmap <leader>tt <Esc>:TagbarToggle<CR>',

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-j>"

" .lvimrc settings
let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0
let g:localvimrc_event = [ "VimEnter" ]

" gitgutter
let g:gitgutter_sign_column_always = 1

" No removal of indent on empty lines
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>

