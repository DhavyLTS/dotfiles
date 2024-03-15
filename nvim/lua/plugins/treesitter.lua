return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        require('nvim-treesitter.configs').setup {
            highlight = { enable = true },
            auto_install = true,
        }
    end
}