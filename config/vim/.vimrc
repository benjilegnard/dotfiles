" load defaults
source $VIMRUNTIME/defaults.vim

set number
set relativenumber


" Plugins
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
call plug#end()

" lightline configuration
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
set laststatus=2

" 
