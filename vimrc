"=========================
"==Vundle settings start here==
"==============================

set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins


Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.Plugin 'tpope/vim-fugitive'


Plugin 'scrooloose/nerdtree'
" plugin from https://github.com/scrooloose/nerdtree

Plugin 'bling/vim-airline'
" plugin from https://github.com/bling/vim-airline

Plugin 'chriskempson/base16-vim'
"from: https://github.com/chriskempson/base16-vim

Plugin 'airblade/vim-gitgutter'
"from: https://github.com/airblade/vim-gitgutter

Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'
"from: https://github.com/plasticboy/vim-markdown

Plugin 'kchmck/vim-coffee-script'
"from: https://github.com/kchmck/vim-coffee-script

"Plugin 'jelera/vim-javascript-syntax'
"from: https://github.com/jelera/vim-javascript-syntax

"Plugin 'vim-scripts/JavaScript-Indent'
"from: https://github.com/vim-scripts/JavaScript-Indent

Plugin 'ternjs/tern_for_vim'
"from: https://github.com/ternjs/tern_for_vim 

"Plugin 'othree/javascript-libraries-syntax.vim'
"from: https://github.com/othree/javascript-libraries-syntax.vim 

"Plugin 'scrooloose/syntastic'
"from: https://github.com/scrooloose/syntastic
"this plugin makes the :w act all funky. there's a delay and if you type
"anything at that time the chars will be recorded at random locations


"Plugin 'digitaltoad/vim-jade'
"from: http://vimawesome.com/plugin/jade-vim

"Plugin 'elzr/vim-json'
"from: http://vimawesome.com/plugin/json-vim

Plugin 'Yggdroot/indentLine'
"from: http://vimawesome.com/plugin/indentline

Plugin 'cakebaker/scss-syntax.vim'
"from: http://vimawesome.com/plugin/scss-syntax-vim

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

"=======================
"==settings start here==
"=======================
syntax on
set nu "set line numbers on
let base16colorspace=256  " Access colors present in 256 colorspace
set background=light
colorscheme base16-solarized
set autoindent
"set smartindent "automatically intent after curly brackets
set tabstop=2 "this sets the tab to be 2  spaces
set shiftwidth=2
set expandtab
set omnifunc=csscomplete#CompleteCSS "turn on omnicomplete
set tw=80 "set text width
filetype plugin indent on "this makes sure file-specific indentations work
set linespace=2 
set nowrap
set incsearch "file automatically jumps to match as I type

"sets colors for specific elements of terminal
"from https://github.com/chrishunt/color-schemes/blob/master/README.md
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

nmap <C-n> :NERDTreeToggle<CR> 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "close vim if only thing left is nerdtree
set backspace=2 "makes backspace work like most other apps 
set term=builtin_ansi "this is to correct the left/right arrow key fuck ups that sometimes happen

"CSS indentation and highlight
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

"##############################################################################                                                                         
"" Easier split navigation                                                                                                                               
"##############################################################################                                                                         
"
"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                     
nmap <silent> <c-l> :wincmd l<CR>
