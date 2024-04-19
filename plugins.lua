local packer = require("packer")

-- 初始化 Packer
packer.init({
    -- Packer 配置
})

packer.use({
    'nvim-tree.lua',
    'bufferline.nvim'
})


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- gruvbox theme
    use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }
    -- nvim-tree (新增)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
        -- bufferline (新增)
    use({

    "akinsho/bufferline.nvim", requires = {

    "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    
    use 'navarasu/onedark.nvim'

end)


-- return require('packer').startup(function(use)
--   -- Packer can manage itself
--   use 'wbthomason/packer.nvim'
--
--   use "npxbr/gruvbox.nvim"
--
--   use "kyazdani42/nvim-tree.lua"
--
--
--   -- Simple plugins can be specified as strings
--   use 'rstacruz/vim-closer'
--
--   -- Lazy loading:
--   -- Load on specific commands
--   use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
--
--   -- Load on an autocommand event
--   use {'andymass/vim-matchup', event = 'VimEnter'}
--
--   -- Load on a combination of conditions: specific filetypes or commands
--   -- Also run code after load (see the "config" key)
--   use {
--     'w0rp/ale',
--     ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
--     cmd = 'ALEEnable',
--     config = 'vim.cmd[[ALEEnable]]'
--   }
--
--   -- Plugins can have dependencies on other plugins
--   use {
--     'haorenW1025/completion-nvim',
--     opt = true,
--     requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
--   }
--
--   -- Plugins can also depend on rocks from luarocks.org:
--   use {
--     'my/supercoolplugin',
--     rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
--   }
--
--   -- You can specify rocks in isolation
--   use_rocks 'penlight'
--   use_rocks {'lua-resty-http', 'lpeg'}
--
--   -- Local plugins can be included
--   use '~/projects/personal/hover.nvim'
--
--   -- Plugins can have post-install/update hooks
--   use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
--
--   -- Post-install/update hook with neovim command
--   use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
--
--   -- Post-install/update hook with call of vimscript function with argument
--   use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
--
--   -- Use specific branch, dependency and run lua file after load
--   use {
--     'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
--     requires = {'kyazdani42/nvim-web-devicons'}
--   }
--
--   -- Use dependency and run lua function after load
--   use {
--     'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
--     config = function() require('gitsigns').setup() end
--   }
--
--   -- You can specify multiple plugins in a single call
--   use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
--
--   -- You can alias plugin names
--   use {'dracula/vim', as = 'dracula'}
--
--   --------------------- colorschemes --------------------
--    -- tokyonight
--    use("folke/tokyonight.nvim")
--    -------------------------------------------------------
--    -- nvim-tree (新增)
--    use({
--     "kyazdani42/nvim-tree.lua",
--      requires = "kyazdani42/nvim-web-devicons"
--   })
--
-- end)


