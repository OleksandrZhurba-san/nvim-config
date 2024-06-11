return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup({
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "pyright",
                "debugpy",
                "clangd",
            },
        })
        require("mason-lspconfig").setup({
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {}
                end
            }
        })
    end
}
