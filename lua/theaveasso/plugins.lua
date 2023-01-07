-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

return packer.startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  
  -- Project Management

  -- ColorScheme
  use { "catppuccin/nvim", as = "catppuccin", config = function() vim.cmd("colorscheme catppuccin-macchiato") end }

  -- Telescope
  use "nvim-lua/popup.nvim"

  use {
  "nvim-telescope/telescope.nvim", tag = "0.1.x",
  requires = { {"nvim-lua/plenary.nvim"} }
}
-- Git integration

    use {
  "VonHeikemen/lsp-zero.nvim",
  requires = {
    -- LSP Support
    {"neovim/nvim-lspconfig"},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},

    -- Autocompletion
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"saadparwaiz1/cmp_luasnip"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-nvim-lua"},

    -- Snippets
    {"L3MON4D3/LuaSnip"},
    -- Snippet Collection (Optional)
    {"rafamadriz/friendly-snippets"},
  }
}
  end)
