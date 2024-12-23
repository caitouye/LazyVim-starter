-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	-- do not create the keymap if a lazy keys handler exists
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

-- keymap
map("n", "<leader>w", ":w<CR>", { silent = true, desc = "Save" })
map("n", "<C-c>", '"+y', { desc = "Copy to clipboard" })
map("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })
map("n", "<leader>v", '"+p', { desc = "Paste from clipboard" })
map("v", "<C-v>", '"_d"+p', { desc = "Paste from clipboard" })
map("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard" })
map("c", "<C-v>", "<C-r>+", { desc = "Paste from clipboard" })
map("n", "<leader>p", '"0p', { desc = "Paste last yanked text" })
map("t", "<C-r>", [['<C-\><C-N>"'.nr2char(getchar()).'pi']], { expr = true, desc = "Paste from registers" })

