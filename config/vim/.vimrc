" load defaults
source $VIMRUNTIME/defaults.vim

set number
set relativenumber


" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'junegunn/fzf'
call plug#end()

" airline configuration
let g:airline_theme = 'catppuccin_mocha'
let g:airline_powerline_fonts = 1