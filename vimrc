set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8
set showcmd
set nu
set clipboard=unnamed
set laststatus=2
set backspace=indent,eol,start

set visualbell
set t_vb=

" screen splits
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" For pydocstring
set softtabstop=4

"CtrlSF shortcut
nmap <C-F>f <Plug>CtrlSFPrompt

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" View doctrings for folded code
let g:SimpylFold_docstring_preview=1

" Set md interp
let vim_markdown_preview_github=1

" Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=85 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Full stack code indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Making code look nice
let python_highlight_all=1
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'JamshedVesuna/vim-markdown-preview'
"Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plugin 'junegunn/fzf.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tpope/vim-rhubarb'

" YCM settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" select colorscheme based on mode
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
  endif

set t_Co=256
colorscheme wombat256mod

" Open Nerdtree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

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
