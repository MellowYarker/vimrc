" Currently using Vundle to manage plugins, may move to Pathogen if I ever
" escape the noob phase.
"
"   Plugins:
"  _____________________________________________________________________________
" |      vim-fugitive    -> Call arbitrary git commands from vim.               |
" |      zenburn         -> Low contrast colour scheme.                         |
" |      lighline        -> Fast, and easy to customize status line.            |
" |      syntastic       -> Syntax checking.                                    |
" |      vim-commentary  -> Fast commands for strategically commenting files.   |
" |      vim-rooter      -> Finds the root of your current project dir, great   |
" |                         for tools that search for files/directories (Rg,    |
" |                         etc).                                               |
" |      fzf             -> Fuzzy search, I am an extreme fzf noob.             |
" |_____________________________________________________________________________|
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" Plugins can be installed from anywhere, see Vundle's github for those
" commands.


set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to inclue Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off

" set the runtime path to inclue Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'

" Colour scheme
" automatically load colours on startup
colors zenburn
Plugin 'jnurmine/zenburn'

" lightline status bar
Plugin 'itchyny/lightline.vim'
set laststatus=2

" Syntax checking
Plugin 'scrooloose/syntastic'

" Very useful comment shortcut
Plugin 'tpope/vim-commentary'

" When working in a file, set working dir to root of project
" Enables deep recursive search of files
Plugin 'airblade/vim-rooter'

" Fuzzy search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put non-Plugin stuff after this line

" set tab button to register as 4 space characters
set tabstop=4 shiftwidth=4 expandtab

" tells vim-commentary that c,cpp,cs, and java files should use // for
" comments
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
syntax on

" modifying lightline scheme
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ }
