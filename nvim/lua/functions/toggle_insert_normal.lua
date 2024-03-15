function toggle_insert_normal()
    if vim.api.nvim_get_mode().mode == 'i' then
        vim.api.nvim_command('stopinsert')
    else
        vim.api.nvim_command('startinsert')
        vim.api.nvim_command('normal! l')
    end
end
