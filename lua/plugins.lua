return require('packer').startup(function()

  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	--old vim plugins
	use 'tpope/vim-surround'
	use 'luochen1990/rainbow'
	--scheme
	use 'glepnir/zephyr-nvim'
	use 'joshdick/onedark.vim'
	--file manage
	use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
	use {'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}
	--lower blank
	use {'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use { 'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate' }
	-- lsp
	use({ 'neovim/nvim-lspconfig' })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	  -- nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
	use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
	use 'hrsh7th/cmp-path'     -- { name = 'path' }
	use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
	use 'hrsh7th/nvim-cmp'
	-- vsnip
	use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
	use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'
	-- lspkind
	use 'onsails/lspkind-nvim'
end)


