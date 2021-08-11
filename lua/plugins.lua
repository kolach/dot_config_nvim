return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use { 'nvim-telescope/telescope-project.nvim' }
    -- another fuzzy finder
    use { 'liuchengxu/vim-clap', run = ':Clap install-binary' }

    -- dashboard
    use { 'glepnir/dashboard-nvim' }

    -- which-key
    use { 'folke/which-key.nvim' }

    use { 'ryanoasis/vim-devicons' }
    use { 'kyazdani42/nvim-web-devicons' }
    -- use { 'kyazdani42/nvim-tree.lua' }

    -- Treesitter for better syntax highlighting
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}
    use {'nvim-treesitter/nvim-treesitter-refactor'}
    use {'JoosepAlviste/nvim-ts-context-commentstring'}
    use {'p00f/nvim-ts-rainbow'}
    use {'romgrk/nvim-treesitter-context'}
    use {'windwp/nvim-ts-autotag'} -- Auto Close and Auto Rename HTML Tag
    use {'nvim-treesitter/playground'}

    use { 'scrooloose/nerdtree' }


    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }
    use { 'steelsojka/completion-buffers' } -- bufers completion source for completion-nvim
    use { 'nvim-lua/lsp_extensions.nvim' }
    use { 'nvim-lua/lsp-status.nvim' }

    -- Editorconfig
    use { 'editorconfig/editorconfig-vim' }

    -- Debugging
    use {'puremourning/vimspector'}
    use {'nvim-telescope/telescope-vimspector.nvim'}

    -- DAP
    use { 'mfussenegger/nvim-dap' }
    use { 'nvim-telescope/telescope-dap.nvim' }
    -- use { 'mfussenegger/nvim-dap-python' } -- Python
    use {'theHamsta/nvim-dap-virtual-text'}
    use {'rcarriga/nvim-dap-ui'}
    use {'Pocco81/DAPInstall.nvim'}
    use {'jbyuki/one-small-step-for-vimkind'}

    -- tests
    use { 'vim-test/vim-test' }

    -- Snippets
    use { 'norcalli/snippets.nvim' }
    use { 'honza/vim-snippets' }
    use { 'SirVer/ultisnips' }

    -- Lua development
    use { 'tjdevries/nlua.nvim' }

    -- Awesome Tim Pope plugins collection
    -- Vim dispatch
    use { 'tpope/vim-dispatch' }
    use { 'tpope/vim-fugitive' } -- Fugitive for Git
    use { 'tpope/vim-unimpaired' }
    use { 'tpope/vim-markdown' } -- installed for a single purpose of having syntax highlighting inside fenced blocks
    use { 'tpope/vim-surround' }
    use { 'tpope/vim-repeat' }
    use { 'tpope/vim-projectionist' } -- Finding files semantically
    use { 'tpope/vim-obsession' }

    -- Color schemes
    use { 'sainnhe/gruvbox-material' }
    use { 'lifepillar/vim-solarized8' }
    use { 'romgrk/doom-one.vim' }

    -- git changes vertical line indicator
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- Comments
    -- use { 'tyru/caw.vim' }
    use { 'tpope/vim-commentary' }



    -- navigate to github line <leader>gh
    use { 'ruanyl/vim-gh-line' }

    use { 'buztard/vim-rel-jump' }

    -- Terminal
    use { 'kassio/neoterm' }

    -- Highlight words and lines on the cursor for Neovim
    -- use { 'yamatsum/nvim-cursorline' }

    -- Statusbar
    -- use {'vim-airline/vim-airline'}
    -- use {'vim-airline/vim-airline-themes'}

    use {'datwaft/bubbly.nvim', config = function()
    end}

    -- HTTP request tester
    -- https://github.com/NTBBloodbath/rest.nvim
    use {
      'kolach/rest.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('rest-nvim').setup({
          result_split_horizontal = false,
        })
      end
    }
end)

