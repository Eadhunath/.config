-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- Theme
    use ({
        "briones-gabriel/darcula-solid.nvim",
        requires = "rktjmp/lush.nvim",
    config = function()
        vim.cmd('set termguicolors')
        vim.cmd('colorscheme darcula-solid')
        end
    })

	use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}
    use ('https://github.com/ThePrimeagen/harpoon')
    use ('https://github.com/mbbill/undotree')
    use ('junegunn/goyo.vim')
    use ('https://github.com/tpope/vim-commentary')
    -- use ('https://github.com/vim-airline/vim-airline')
    -- use ('https://github.com/vim-airline/vim-airline-themes')

    -- Markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use ('godlygeek/tabular')
    use ('elzr/vim-json')
    use ('plasticboy/vim-markdown')
    use ('ThePrimeagen/vim-be-good')
    use ('yasuhiroki/github-actions-yaml.vim')
end)


