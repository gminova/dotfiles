set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" hide portions of your code
Plugin 'tmhedberg/SimpylFold'

" autoindent for python
Plugin 'vim-scripts/indentpython.vim'

" syntax highlighting for python
Plugin 'vim-syntastic/syntastic'

" PEP 8 checking
Plugin 'nvie/vim-flake8'

" color themes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" file tree
Plugin 'scrooloose/nerdtree'

" searching from VIM with Ctrl+p
Plugin 'kien/ctrlp.vim'

" git integration
Plugin 'tpope/vim-fugitive'

" status bar for git branches and files being edited
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" specify screen splits
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" add the proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" full-stack indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" set utf-8
set encoding=utf-8

" line numbers
set nu

" access system clipboard
set clipboard=unnamed

" make python code pretty
let python_highlight_all=1
syntax on

" theme logic
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" toggle color themes
call togglebg#map("<F5>")

" ignore the .pyc file from tree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
