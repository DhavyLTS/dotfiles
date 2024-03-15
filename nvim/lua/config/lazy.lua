local plugins_path = vim.fn.stdpath('config') .. "/lua/plugins"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end vim.opt.rtp:prepend(lazypath)

local plugins = {}

-- Function to load Lua plugins
local function load_plugins()
    local dir = vim.loop.fs_scandir(plugins_path)
    if dir then
        while true do
            local name, type = vim.loop.fs_scandir_next(dir)
            if not name then break end
            if type == "file" and name:match("%.lua$") then
                local ok, plugin_module = pcall(require, "plugins." .. name:match("^(.*)%.lua$"))
                if ok then
                    --print("Loaded plugin:", name)
                    table.insert(plugins, plugin_module)
                else
                    print("Error loading plugin:", name)
                    print(plugin_module) -- Print error message
                end
            end
        end
    end
end

load_plugins();

require("lazy").setup(plugins);
