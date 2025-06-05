return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {},
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			modules = {},

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
