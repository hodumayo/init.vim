vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'preservim/nerdtree'
    use 'rust-lang/rust.vim'
    use 'frazrepo/vim-rainbow'
    use 'vim-airline/vim-airline'
    use 'tpope/vim-surround'
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'jasonwoodland/vim-html-indent'
    use 'github/copilot.vim'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        'abecodes/tabout.nvim',
        config = function()
          require('tabout').setup {
          tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
          backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
          act_as_tab = true, -- shift content if tab out is not possible
          act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
          default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
          default_shift_tab = '<C-d>', -- reverse shift default action,
          enable_backwards = true, -- well ...
          completion = true, -- if the tabkey is used in a completion pum
          tabouts = {
            {open = "'", close = "'"},
            {open = '"', close = '"'},
            {open = '`', close = '`'},
            {open = '(', close = ')'},
            {open = '[', close = ']'},
            {open = '{', close = '}'},
            {open = '<', close = '>'},
            {open = '/*', close = '*/'},

          },
          ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
          exclude = {} -- tabout will ignore these filetypes
      }
        end,
          wants = {'nvim-treesitter'}, -- or require if not used so far
          after = {'nvim-cmp'} -- if a completion plugin is using tabs load it before
      }
    use 'morhetz/gruvbox'

end)
