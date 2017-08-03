"Vundle Stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"ctrlpvim
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'

"vim-javascript
Plugin  'https://github.com/pangloss/vim-javascript.git'

"Syntastic 
Plugin 'https://github.com/vim-syntastic/syntastic.git'

"V9 Vimscript Library
Plugin 'https://github.com/vim-scripts/L9.git'

"Fuzzy Finder
Plugin 'https://github.com/vim-scripts/FuzzyFinder.git'

"NerdTree Plugin
Plugin 'scrooloose/nerdtree.git'

"Lightline Plugin (Status Bar)
Plugin 'itchyny/lightline.vim'

"YouCompleteMe
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
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
"
"
"
"
"Disable Arrow Keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"Enable Line Numbers
set number
"set relativenumber

"Change To Word Proccessor Mode
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu

set ai "enable auto indent

set cpoptions+=$ "enable $ marker when using change

syntax enable "enable syntax processing

set tabstop=4 "visual spaces per tab
set softtabstop=4 "spaces in tab when editing

set wildmenu "visual autocomplete for command window

"Searching
set incsearch "search as characters are entered
set hlsearch "highlight matches
"Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

