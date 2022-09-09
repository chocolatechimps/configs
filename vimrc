"        ====  Reid's Vim Rice  ====

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

"   Trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"   Return cursor to previous location on load
autocmd BufReadPost * normal `"

"   make it so you can delete a line with backspace in insert mode
set bs=2
"   more backspace supercharging
set backspace=indent,eol,start

set showcmd







" VIM-PLUG
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()

Plug 'https://github.com/davidhalter/jedi-vim.git'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
