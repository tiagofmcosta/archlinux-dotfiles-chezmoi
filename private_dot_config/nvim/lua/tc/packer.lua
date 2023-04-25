vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'lewis6991/impatient.nvim'

    use 'stevearc/dressing.nvim'

    use 'folke/which-key.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons"
    }

    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }

    use { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }

    use 'nvim-treesitter/playground'

    use 'ThePrimeagen/harpoon'

    use 'mbbill/undotree'

    use 'kdheepak/lazygit.nvim'

    use "nvim-treesitter/nvim-treesitter-context"

    use "windwp/nvim-autopairs"

    use "keyvchan/telescope-find-pickers.nvim"

    use "adoyle-h/lsp-toggle.nvim"

    use "jose-elias-alvarez/null-ls.nvim"

    use 'NvChad/nvim-colorizer.lua'

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            {
                -- only needed if you want to use the commands with "_with_window_picker" suffix
                's1n7ax/nvim-window-picker',
                tag = "v1.*",
            }
        }
    }

    use 'numToStr/Comment.nvim'

    use "m4xshen/smartcolumn.nvim"

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use "RRethy/vim-illuminate"

    use 'jghauser/mkdir.nvim'

    use {
        'j-morano/buffer_manager.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use {
        "ghillb/cybu.nvim",
        branch = "main",                                                       -- timely updates
        requires = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" }, -- optional for icon support
    }

    use 'nguyenvukhang/nvim-toggler'

    use {
        'sudormrfbin/cheatsheet.nvim',

        requires = {
            { 'nvim-telescope/telescope.nvim' },
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
        }
    }

    use 'rcarriga/nvim-notify'

    use({
        "folke/noice.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    })

    use "lukas-reineke/indent-blankline.nvim"

    use {
        "kevinhwang91/nvim-ufo",
        requires = {
            "kevinhwang91/promise-async",
            "luukvbaal/statuscol.nvim",
        }
    }

    use { "akinsho/toggleterm.nvim", tag = '*' }

    use { 'kevinhwang91/nvim-bqf' }

    use "ggandor/leap.nvim"

    use 'lewis6991/gitsigns.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
end)
