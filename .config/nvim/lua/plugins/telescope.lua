return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
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
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
			vim.keymap.set("n", "<leader>fs", function()
				builtin.current_buffer_fuzzy_find()
			end, { desc = "Search in current file" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-media-files.nvim",
		dependencies = {
			"nvim-lua/popup.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					media_files = {
						filetypes = { "png", "webp", "jpg", "jpeg", "mp4", "webm", "pdf" },
						find_cmd = "rg",
					},
				},
			})
			require("telescope").load_extension("media_files")
			vim.keymap.set("n", "<leader>fm", function()
				require("telescope").extensions.media_files.media_files()
			end, { desc = "Media files" })
		end,
	},
}
