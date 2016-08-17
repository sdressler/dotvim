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
"Plugin 'wincent/Command-T'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/YouCompleteMe'
"Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'embear/vim-localvimrc'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-surround'
Plugin 'digitaltoad/vim-jade'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/unite.vim'
"Plugin 'nachumk/systemverilog.vim'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'rizzatti/dash.vim'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'mtth/scratch.vim'
" Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'neomake/neomake'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"syntax on

" No auto-comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

if exists("neovim_dot_app")
   "set guifont=Sauce\ Code\ Powerline:h13
   "set guifont=Fira\ Mono:h13
   call MacSetFont("Fira Mono", 13)
endif

" Center
set so=999

colorscheme gruvbox
set bg=dark

set linebreak

"let g:solarized_termcolors=256
"set background=light
"colorscheme solarized

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
let maplocalleader="#"

set colorcolumn=120

au BufNewFile,BufRead *.sv set filetype=verilog
au BufNewFile,BufRead *.cl set filetype=cpp

" YCM
let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1
let g:ycm_python_binary_path = '/usr/local/bin/python3'

nmap <leader>gt <Esc>:YcmCompleter GetType<CR>
nmap <leader>gp <Esc>:YcmCompleter GetParent<CR>

"Tagbar
"let g:tagbar_width=50
"nmap <leader>tt <Esc>:TagbarToggle<CR>

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

"
set cole=0 
au FileType * setl cole=0 

set hlsearch

" SysV FT
autocmd BufRead,BufNewFile *.sv setlocal filetype=systemverilog

" FZF
set rtp+=/usr/local/opt/fzf
nmap <leader>t <Esc>:FZF<CR>

" Others
set nofoldenable

