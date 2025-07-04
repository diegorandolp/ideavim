-- File: lua/plugins/custom.lua
return {
	-- Set the colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "night" },
	},

	-- Add additional Treesitter parsers
	-- NOTE: It's better to use the `opts` function to EXTEND the existing list.
	-- Directly setting `ensure_installed` would OVERWRITE the defaults.
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			-- Add parsers to the `ensure_installed` list
			vim.list_extend(opts.ensure_installed, {
				"python",
				"rust", -- Example: add rust
				"go", -- Example: add go
			})
		end,
	},

	-- Configure LSP servers
	-- Add pyright for Python. Other servers are handled by LazyVim extras.
	{
		"neovim/nvim-lspconfig",
		opts = {
			-- This is where you can configure servers that are not handled by extras.
			servers = {
				-- pyright will be automatically installed by mason and configured by lspconfig.
				pyright = {},
			},
		},
	},

	-- Add additional tools to be installed by Mason

	{
		"mason-org/mason.nvim",
		opts = function(_, opts)
			-- Add new tools to the `ensure_installed` list.
			-- This EXTENDS the default list, not replaces it.
			vim.list_extend(opts.ensure_installed, {
				"flake8",
				"shellcheck",
				"shfmt",
			})
		end,
	},
	-- Add a different starter screene
	--{
	--	import = "lazyvim.plugins.extras.ui.mini-starter",
	----},
}
