return {
	{
		"nvim-telescope/telescope.nvim",
		version = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					file_browser = {
						hijack_netrw = true,
						mappings = {
							["i"] = {},
							["n"] = {},
						},
					},
				},
			})

			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("file_browser")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files({ cwd = vim.loop.cwd() })
			end, { desc = "Files (cwd)" })
			vim.keymap.set("n", "<leader>fF", function()
				builtin.find_files({ cwd = "~" })
			end, { desc = "Files (global)" })
			vim.keymap.set("n", "<leader>fg", function()
				builtin.live_grep({ cwd = vim.loop.cwd() })
			end, { desc = "Grep (cwd)" })
			vim.keymap.set("n", "<leader>fs", function()
				builtin.current_buffer_fuzzy_find()
			end, { desc = "Search in current file" })
			vim.keymap.set("n", "<leader>fm", function()
				require("telescope").extensions.file_browser.file_browser({ path = "%:p:h" })
			end, { desc = "File browser" })
		end,
	},
}
