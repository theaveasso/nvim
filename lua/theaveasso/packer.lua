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

  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"

  -- Telescope

  
  -- Git integration


  end)
