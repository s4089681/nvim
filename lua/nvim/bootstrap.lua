local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
	spec = {
		{ import = "nvim.plugins" },
	},
})

-- Call plugin setup
--require("lualine").setup()
require("lualine").setup({
	options = { theme = "palenight" },
	globalstatus = true,
	disabled_filetypes = { "dashboard" },
})
--require("mini.starter").setup()
require("which-key").setup()

vim.cmd("Oil")
