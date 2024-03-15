return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    }, 
    config = function()
		local cmd = require("neo-tree.command")
        require("neo-tree").setup({
            event_handlers = {
                {
                    event = "file_opened",
                    handler = function()
                        cmd.execute({ action = "close" })
                    end
                }
            },
            filesystem = {
                hijack_netrw_behavior = "open_current"
            },
            default_component_configs = {
                modified = { symbol = "" }
            },
            close_if_last_window = true,
            enable_git_status = false,
            window = { width = 35 },    
        })

		vim.cmd([[nnoremap <leader>e :Neotree toggle<cr>]])
    end
}
