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
