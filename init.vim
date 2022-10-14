call plug#begin()
Plug 'preservim/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'abecodes/tabout.nvim'
Plug 'morhetz/gruvbox'
call plug#end()
"inoremap <silent><expr> <S-J> coc#pum#visible() ? coc#pum#next(1) : "\<S-J>"
"inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
"inoremap <silent><expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
nnoremap <silent><C-S-t> :enew<Enter>
nnoremap <silent><C-S-tab> :bprevious!<Enter>
nnoremap <silent><C-tab> :bnext!<Enter>
nnoremap <silent><C-w> :bd<Enter> 
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch hlsearch
set encoding=utf-8
set number
set hidden
set wildmode=longest,list,full wildmenu
set clipboard=unnamed
set nobackup
set nowb
set noswapfile
colorscheme gruvbox
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
lua << EOF
require("tabout").setup({
  tabkey = "",
  backwards_tabkey = "",
})
local function replace_keycodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.tab_binding()
    if vim.fn["coc#pum#visible"]() ~= 0 then
    return replace_keycodes("<C-n>")
  else
    return replace_keycodes("<Plug>(Tabout)")
  end
end

function _G.s_tab_binding()
  if vim.fn["coc#pum#visible"]() ~= 0 then
    return replace_keycodes("<C-p>")
  else
    return replace_keycodes("<Plug>(TaboutBack)")
  end
end
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_binding()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_binding()", {expr = true})
EOF
"highlight Search guibg='Purple' guifg='NONE'
