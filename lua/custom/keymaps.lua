-- @param keymap /w first argument is keymap
-- @param origin_key /w second argument
-- @param description /w third argument is optional it provides description
function nmap(keymap, origin_key, description)
    if description then

        vim.keymap.set("n", keymap, origin_key .. "<CR>", {silent=true, desc=description})
    else
        vim.keymap.set("n", keymap, origin_key .. "<CR>", {silent=true})
    end
end
vim.keymap.set("n", "<leader>v", function ()
    vim.cmd("vsplit")
    local win = vim.api.nvim_get_current_win()
    local buf = vim.api.nvim_create_buf(true, true)
    vim.api.nvim_win_set_buf(win, buf)
end,
{silent=true, desc="split window vertically"})
vim.keymap.set("n", ";", ":")
nmap("<leader>f", ":NvimTreeFocus", "NvimTreeFocus")
nmap("tt", ":NvimTreeToggle")
-- vim.keymap.set("n", ";", ":")
-- vim.keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>")
