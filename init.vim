call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
inoremap <silent><expr> <S-J> coc#pum#visible() ? coc#pum#next(1) : "\<S-J>"
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
inoremap <expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
nnoremap <C-n> :NERDTreeToggle<CR>
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set number
