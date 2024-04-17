-- 添加 Packer 路径到 package.path
package.path = package.path .. ';/home/amiriox/.local/share/nvim/site/pack/packer/start/packer.nvim/?.lua'

-- 基础配置
require('basic')
-- 快捷键映射
require("keybindings")
-- Packer 插件管理
require('plugins').startup()

-- 主题设置 （新增）
require("colorscheme")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.telescope")
require('telescope').load_extension('projects')


local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- add
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use("folke/tokyonight.nvim")
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use({
  "akinsho/bufferline.nvim", requires = {
  "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})

  use({
   "nvim-lualine/lualine.nvim", requires = {
   "kyazdani42/nvim-web-devicons" } })
   use("arkav/lualine-lsp-progress")

  use("glepnir/dashboard-nvim")
  use("ahmedkhalf/project.nvim")

  use {
    'nvim-telescope/telescope.nvim', requires = {
    "nvim-lua/plenary.nvim" } }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use 'navarasu/onedark.nvim'
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-treesitter/nvim-treesitter' }

  if packer_bootstrap then
    require('packer').sync()
  end
end)





