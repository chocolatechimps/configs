"        ====  Reid's Vim Rice  ====

"   vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"    a couple changes for making programming easier
"    changes tabs to a set number of spaces, currently 4
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"    Not totally sure how this works, but enables auto-indentation
"set autoindent
"set textwidth=80

"    Line Numbers
set number
"    Line Numbers Orange
highlight LineNr ctermfg=darkyellow

"   highlighting during searches ( /findthistext )
"   search and ignore case       ( /findthistext\c )
set hlsearch


"    Word processor mode
"    Also this is how functions work in vimscript
"    type :WP to call WordProcessorMode function.
"    sort of like 'alias' com! WP call WordProcessorMode()

func! WordProcessorMode()
"    setlocal textwidth=80
    setlocal wrap
    setlocal nonumber
    setlocal formatoptions=1
    setlocal linebreak
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu



"   Trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"   Return cursor to previous location on load
autocmd BufReadPost * normal `"

"   make it so you can delete a line with backspace in insert mode
set bs=2
