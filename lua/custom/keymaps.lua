-- @param keymap /w first argument is keymap
-- @param origin_key /w second argument
-- @param desc /w third argument is optional it provides description
function nmap(keymap, origin_key, description)
    if desc then

        vim.keymap.set("n", keymap .. "<CR>", origin_key, {silent=true, desc=description})
    else
        vim.keymap.set("n", keymap .. "<CR>", origin_key, {silent=true})
    end
end
vim.keymap.set("n", "<leader>v<CR>", function ()
    vim.cmd("vsplit")
    local win = vim.api.nvim_get_current_win()
    local buf = vim.api.nvim_create_buf(true, true)
    vim.api.nvim_win_set_buf(win, buf)
end,
{silent=true, desc="split window vertically"}
)
nmap(";", ":")
nmap("<leader>f", ":NvimTreeFocus", "NvimTree focus")
nmap("tt", ":NvimeTreeToggle")
-- vim.keymap.set("n", ";", ":")
-- vim.keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>")

