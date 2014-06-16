set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle "bling/vim-airline"
Bundle "pangloss/vim-javascript"
Bundle 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'hynek/vim-python-pep8-indent'

syntax enable
filetype plugin indent on

:autocmd!
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>
:nmap Z :tabprev<CR>
:nmap X :tabnext<CR>
:nmap <S-t> :vsplit<CR>
:nmap Q :wincmd h<CR>
:nmap W :wincmd l<CR>

syntax on

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=2
"set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

" Automatic formatting
autocmd BufWritePre * :%s/\s\+$//e

highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen

au BufNewFile * set noeol
au BufRead,BufNewFile *.t_html set filetype=html
au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" NERDTree
"nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }

" vim-go
let g:go_disable_autoinstall = 0
