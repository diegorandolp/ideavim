-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- 1. Core LazyVim
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },

		-- 2. LazyVim “extras” (language support, UI, DAP, etc.)
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		--{ import = "lazyvim.plugins.extras.lang.rust" },
		-- you can also enable ui extras, dap extras, etc:
		--
		-- 3. Your own plugins
		{ import = "plugins" },
	},
	defaults = {
		lazy = false, -- only LazyVim plugins will be lazy-loaded, others will load during startup
		version = false, -- always use the latest git commit
	},
	cheker = {
		enabled = true, -- automatically check plugin updates periodically
		notify = false, -- notify on update
	},
	performance = {
		rtp = { -- diable some plugins
			disable_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
