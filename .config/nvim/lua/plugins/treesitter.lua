return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"html",
				"css",
				"scss",
				"javascript",
				"typescript",
				"tsx",
				"lua",
				"json",
				"yaml",
				"graphql",
				"vue",
				"svelte",
				"astro",
				"markdown",
			},
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
