"https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'cscope_maps.vim'
"Plugin 'https://github.com/vim-ruby/vim-ruby.git'
"Plugin 'https://github.com/tpope/vim-rails.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plugin 'https://github.com/vim-ruby/vim-ruby.git'
Plugin 'https://github.com/skalnik/vim-vroom.git'
Plugin 'https://github.com/tpope/vim-rails.git'
Plugin 'https://github.com/tpope/vim-rbenv.git'
Plugin 'https://github.com/tpope/vim-bundler.git'
Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/szw/vim-tags.git'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'https://github.com/morhetz/gruvbox.git'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
call vundle#end()            " required
filetype plugin indent on    " required

set sts=2 ts=2 sw=2
set expandtab
colorscheme gruvbox
set background=dark
syntax on
set nu
set list
set hlsearch
set incsearch
set ignorecase
set smartcase

"https://medium.com/@todariasova/rails-vim-101-essential-vim-plugins-for-ruby-on-rails-development-d74e808d186d
set number
syntax on
filetype plugin indent on
filetype on
filetype indent on
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
set tags=tags
set updatetime=100
cs add $CSCOPE_DB

"CtrlP
silent! nmap <C-p> :CtrlP<CR>

"NERDTree
silent! nmap <C-S-f> :NERDTreeToggle<CR>
silent! map <C-f> :NERDTreeFind<CR>

"vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']

"vim-vroom
let g:vroom_use_detect_spec_helper = 1
let g:vroom_use_bundle_exec = 1

highlight Pmenu ctermbg=gray guibg=gray
set completeopt=longest,menuone
