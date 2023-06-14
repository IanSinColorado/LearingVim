syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

set background=dark
colorscheme PaperColor     " Change a colorscheme

" Ensures swap files are never in present directory
set directory=$HOME/.vim/swapfiles// 

packloadall                " Load all plugins.
silent! helptags ALL       " Load helf files for all plugins

" Fast split navigation with <Ctrl> + hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
map <S-Tab> :NERDTreeToggle<CR>

" set up number lines (relative to current line)
set number relativenumber

" Setting indent for folds
set foldmethod=indent
set foldcolumn=0

" NerdTree Plugin Stuff
let NERDTreeShowBookmarks = 1  " Display bookmarks on startup.
autocmd VimEnter * NERDTree  " Enable NERDTree on Vim startup.
" Autoclose NERDTree if it's the only open window left.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
  \ b:NERDTree.isTabTree()) | q | endif
