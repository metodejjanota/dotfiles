return {
	"3rd/image.nvim",
	config = function()
		require("image").setup({
			backend = "kitty",
			integrations = {
				telescope = {
					enabled = true,
					preview_title = "Image Preview",
				},
			},
		})
	end,
}
