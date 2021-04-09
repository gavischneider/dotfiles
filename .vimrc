call plug#begin('~/.vimplugins')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons' "Last
call plug#end()

set mouse=a
set t_Co=256
set nu
set tabstop=4
set autoindent
set hlsearch
set ignorecase
set incsearch
set showmode
set title
set encoding=UTF-8

syntax on

" Settings for Dracula theme
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

nmap <leader>' :CocCommand explorer<CR>
