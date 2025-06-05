local servers = { "gopls", "lua_ls", "nixd", "rust_analyzer", "svelte", "ts_ls" }

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local default_capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("*", {
			capabilities = default_capabilities,
		})

		vim.lsp.enable(servers)
	end,
}
