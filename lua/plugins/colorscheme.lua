return {
	{
        "sainnhe/everforest",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
          -- load the colorscheme here
          vim.cmd([[colorscheme everforest]])
        end,
	},

	{ 'folke/tokyonight.nvim' },
	{ 'Mofiqul/vscode.nvim' },
	{ 'bluz71/vim-nightfly-colors' },
	{ 'bluz71/vim-moonfly-colors' },
}