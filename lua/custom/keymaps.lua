-- @param keymap /w first argument is keymap
-- @param origin_key /w second argument
-- @param desc /w third argument is optional it provides description
function nmap(keymap, origin_key, desc)
    if desc then

        vim.keymap.set("n", keymap .. "<CR>", origin_key, {silent=true, description=desc})
    else
        vim.keymap.set("n", keymap .. "<CR>", origin_key, {silent=true})
    end
end
nmap(";", ":")
nmap("<leader>f", ":NvimTreeFocus", "NvimTree focus")
nmap("tt", ":NvimeTreeToggle")
-- vim.keymap.set("n", ";", ":")
-- vim.keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>")

