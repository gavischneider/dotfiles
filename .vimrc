call plug#begin('~/.vimplugins')
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline'
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
"set guifont=DroidSansMono_Nerd_Font:h11

syntax on
syntax enable

highlight Comment ctermfg=Green

highlight String ctermfg=Magenta
highlight Character ctermfg=Magenta
highlight Number ctermfg=DarkGreen
highlight Boolean ctermfg=DarkGreen
highlight Float ctermfg=DarkGreen

highlight Function ctermfg=Yellow

highlight Conditional ctermfg=DarkRed
highlight Repeat ctermfg=DarkRed
highlight Label ctermfg=DarkYellow
highlight Operator ctermfg=DarkYellow
highlight Keyword ctermfg=DarkMagenta
highlight Exception ctermfg=Blue

"highlight Structure ctermfg=Green

nmap <leader>' :CocCommand explorer<CR>
