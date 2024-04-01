--[[
-- 添加加载路径
vim.o.runtimepath = vim.o.runtimepath .. ',~/.config/nvim/colors/tokyonight'

-- 获取绝对路径
local tokyonight_path = vim.fn.expand("~/.config/nvim/colors/tokyonight")

-- 加载颜色主题
vim.cmd("lua require('tokyonight').setup({})")
]]

local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
  return
end
