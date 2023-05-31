lua << EOF
require("init")
EOF
let g:airline#extensions#tabline#enabled = 1
nnoremap <silent><C-S-t> :enew<Enter>
nnoremap <silent><C-S-tab> :bprevious!<Enter>
nnoremap <silent><C-tab> :bnext!<Enter>
nnoremap <silent><C-w> :bd<Enter> 
nnoremap <silent><C-S-w> :bd!<Enter> 
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent cindent smartindent
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
set background=dark
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif

"highlight Search guibg='Purple' guifg='NONE'
