syntax enable

" macvim config(move into separate file)
set guifont=Monaco:h15

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set t_Co=256

set nocompatible             " be iMproved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-lang/vim-elixir'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'skalnik/vim-vroom'
Bundle 'mattn/emmet-vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'sheerun/vim-polyglot'
set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim'

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

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" ignore node_modules and _build in ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|_build\|DS_Store\|git'

nnoremap <Leader>l :BufExplorer<CR>

set number
set colorcolumn=80

" improvements for search
set ignorecase "smartcase does not work without ignorecase
set smartcase  "be case sensitive when input has a capital letter
set hlsearch   "hilight seraches by default
nnoremap <C-l> :nohls<CR>

" fast find and replace
nnoremap <C-f> :%s//

set runtimepath^=~/.vim/bundle/ctrlp.vim

" custom settings and experiments
map <silent> <C-n> :NERDTreeToggle<CR>
set backspace=indent,eol,start

" remove all trailing whitespace before saving
autocmd BufWritePre * %s/\s\+$//e

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
" nnoremap <Leader>l :ls<CR>
" nnoremap <Leader>b :bp<CR>
" nnoremap <Leader>f :bn<CR>
nnoremap <Leader>] :e#<CR>
" nnoremap <Leader>1 :1b<CR>
" nnoremap <Leader>2 :2b<CR>
" nnoremap <Leader>3 :3b<CR>
" nnoremap <Leader>4 :4b<CR>
" nnoremap <Leader>5 :5b<CR>
" nnoremap <Leader>6 :6b<CR>
" nnoremap <Leader>7 :7b<CR>
" nnoremap <Leader>8 :8b<CR>
" nnoremap <Leader>9 :9b<CR>
" nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
