-- local state = { win = nil }
--
-- local function toggle_term()
--     if not state.win or not vim.api.nvim_win_is_valid(state.win) then
--         local buf = vim.api.nvim_create_buf(false, true)
--         local width = math.floor(vim.o.columns * 0.8)
--         local height = math.floor(vim.o.lines * 0.8)
--         local row = math.floor((vim.o.lines - height) / 2)
--         local col = math.floor((vim.o.columns - width) / 2)
--
--         state.win = vim.api.nvim_open_win(buf, true, {
--             relative = "editor",
--             width = width,
--             height = height,
--             row = row,
--             col = col,
--             style = "minimal",
--             border = "single"
--         })
--
--         vim.cmd("terminal")
--     else
--         vim.api.nvim_win_hide(state.win)
--     end
-- end
--
-- vim.keymap.set({ "n", "t" }, "<leader>T", toggle_term)
--



-- Mở terminal (split bên dưới)
vim.keymap.set("n", "<leader>B", function()
  vim.cmd("belowright split | terminal")
end)

-- Đóng cửa sổ terminal hiện tại
vim.keymap.set({ "n", "t" }, "<leader>b", function()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_close(win, true)
end)

