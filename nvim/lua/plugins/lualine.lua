return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require('lualine').setup {
			options = {
				globalstatus = true,
				theme = 'gruvbox',
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'branch', 'diff', 'diagnostics'},
					lualine_c = {'filename'},
					lualine_x = {'filetype'},
					lualine_y = {'progress'},
					lualine_z = {'location'}
				},
			}
		}
	end
}
