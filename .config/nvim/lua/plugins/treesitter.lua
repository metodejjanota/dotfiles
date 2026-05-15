return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            indent = { enable = true },
            ensure_installed = {
                "typescript",
                "tsx",
                "javascript",
                "lua",
                "html",
                "css",
                "json",
                "scss",
                "yaml",
                "markdown",
            },
        })
    end,
}