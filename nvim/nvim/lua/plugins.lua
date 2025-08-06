return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
    
    use ({
        "hrsh7th/nvim-cmp",
        config = [[require('config.cmp')]], -- may very based on config
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "L3MON4D3/LuaSnip", -- may very based on config
            "onsails/lspkind-nvim",
            }
        })

	us--e {'dracula/vim', as = 'dracula'}
end)
