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
    "\ set softtabstop=4
    "\ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2



set encoding=utf-8

"let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


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
 "Plugin 'L9'
" Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
 "Plugin 'ascenator/L9', {'name': 'newL9'}
 Plugin 'derekwyatt/vim-scala'
 Plugin 'flazz/vim-colorschemes'
 Bundle 'Valloric/YouCompleteMe'
 Plugin 'tpope/vim-surround'
 Plugin 'salsifis/vim-transpose'
 Plugin 'mmalecki/vim-node.js' 
 Plugin 'tmhedberg/SimpylFold' 
 Plugin 'vim-scripts/indentpython.vim'
 Plugin 'scrooloose/syntastic'
 Plugin 'nvie/vim-flake8'
 "Plugin 'jnurmine/Zenburn'
 "Plugin 'altercation/vim-colors-solarized'
 Plugin 'scrooloose/nerdtree'
 Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Plugin 'kien/ctrlp.vim'

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
      

set clipboard=unnamed
" set editing-mode vi

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
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
"
""" Pathogen 
"execute pathogen#infect()
"syntax on
"filetype plugin indent on

" rtp for node.js
" BundleInstall moll/vim-node


"turn-on line numbers on left side of window
 set number
" 
"change font and size
 set guifont=Consolas:h12:cANSI
"  
" change color scheme to slate"  
 colo slate
"   
"   "maximize the window on open
 au GUIEnter * simalt ~x "max window
