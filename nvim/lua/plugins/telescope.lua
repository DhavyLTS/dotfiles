return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require('telescope').setup {
			defaults = {
				file_ignore_patterns = { "node_modules", "target", ".git" }
			}
		};

		local builtin = require('telescope.builtin');
		local opts = { silent = true, remap = false };
		local map = vim.keymap.set;
		map('n', '<leader>pf', function() vim.cmd([[Telescope find_files initial_mode=normal]]) end, opts);
	end
}
