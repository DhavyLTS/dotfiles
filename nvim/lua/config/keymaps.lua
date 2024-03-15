local opts = { silent = true, noremap = true }
local map = vim.keymap.set

map('n', '<esc>', ':lua toggle_insert_normal()<CR>', opts);

map("i", "<m-h>", function() vim.cmd([[normal! h]]) end, opts)
map("i", "<m-j>", function() vim.cmd([[normal! j]]) end, opts)
map("i", "<m-k>", function() vim.cmd([[normal! k]]) end, opts)
map("i", "<m-l>", function() vim.cmd([[normal! l]]) end, opts)

map("i", "<m-q>", function() vim.cmd([[normal! b]]) end, opts)
map("i", "<m-e>", function() vim.cmd([[normal! e]]) end, opts)

map("n", "<c-w>", vim.cmd.bdelete, opts);
map("n", "<c-e>", vim.cmd.bnext, opts);
map("n", "<c-q>", vim.cmd.bprev, opts);
