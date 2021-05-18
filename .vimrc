set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the specifics for spliting (:sv vertical split, :vs horizontal splits)
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J> " move to the split below
nnoremap <C-K> <C-W><C-K> " move to the split above
nnoremap <C-L> <C-W><C-L> " move to the right split 
nnoremap <C-H> <C-W><C-H> " move to the left split

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \| set textwidth=81
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufNewFile,BufRead *.cpp,*.h
   \ set tabstop=4
   \| set textwidth=81
   \| set autoindent
   \| set fileformat=unix

set encoding=utf-8

"let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" " Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" Install DoxygenToolkit from

let g:DoxygenToolkit_authorName="Jason Rich <jasonrich85@gmail.com>"
"autocmd! FileType c,cpp,java,php call CSyntaxAfter()
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
 Plug 'VundleVim/Vundle.vim'
 
" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
 Plug 'tpope/vim-fugitive'
"
" plugin from http://vim-scripts.org/vim/scripts.html
 "Plug 'L9'
 
" Git plugin not hosted on GitHub
 Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plug 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
 Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
 
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
 "Plug 'ascenator/L9', {'name': 'newL9'}
 Plug 'derekwyatt/vim-scala'
 Plug 'flazz/vim-colorschemes'
 Plug 'tpope/vim-surround'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
 Plug 'salsifis/vim-transpose'
 Plug 'mmalecki/vim-node.js' 
 Plug 'tmhedberg/SimpylFold' 
 Plug 'vim-scripts/indentpython.vim'
 Plug 'vim-scripts/DoxygenToolkit.vim'
 Plug 'vim-scripts/dbext.vim'
 Plug 'scrooloose/syntastic'
 Plug 'nvie/vim-flake8'
 "Plug 'jnurmine/Zenburn'
 "Plug 'altercation/vim-colors-solarized'
 "Plug 'scrooloose/nerdtree'
 
 "" file system viewer
 Plug 'preservim/nerdtree'
 Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Plug 'kien/ctrlp.vim'
 Plug 'octol/vim-cpp-enhanced-highlight'
 
" :Tabularize
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown' "better markdown support


" better cooperation with tmux
Plug 'christoomey/vim-tmux-navigator'

" gutter for marks
Plug 'kshenoy/vim-signature'

" Vim Plug for switching between companion source files (e.g. .h and .cpp)
Plug 'derekwyatt/vim-fswitch'

Plug 'rhysd/vim-clang-format'

"python hightlighting
let python_highlight_all=1
syntax on
set t_Co=256 

"if has('gui_running')
"	  set background=dark
"	    colorscheme solarized
"   else colorscheme zenburn
"     endif

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFocus<CR>

set clipboard=unnamed
" set editing-mode vi

" All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

"To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plug stuff after this line


"turn-on line numbers on left side of window
 set number
 
"change font and size
 set guifont=Consolas:h12:cANSI
  
" change color scheme to slate"  
 colo slate
   
" maximize the window on open
 au GUIEnter * simalt ~x "max window

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
