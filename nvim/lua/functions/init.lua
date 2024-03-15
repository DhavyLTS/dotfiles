local functions_path = vim.fn.stdpath('config') .. "/lua/functions"
local function load_functions()
    local dir = vim.loop.fs_scandir(functions_path)
    if dir then
        while true do
            local name, type = vim.loop.fs_scandir_next(dir)
            if not name then break end
            if type == "file" and name:match("%.lua$") and name ~= "init.lua" then
                local ok, function_module = pcall(require, "functions." .. name:match("^(.*)%.lua$"))
                if ok then
                    --print("Loaded plugin:", name)
                else
                    print("Error loading plugin:", name)
                    print(function_module) -- Print error message
                end
            end
        end
    end
end

load_functions();
