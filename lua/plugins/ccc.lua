-- ~/.config/nvim/lua/plugins/ccc.lua
return {
  "uga-rosa/ccc.nvim",
  config = function()
    require("ccc").setup({})
  end,
  keys = {
    { "<leader>cp", "<cmd>CccPick<CR>", desc = "Pick color tại con trỏ" },
    { "<leader>cc", "<cmd>CccConvert<CR>", desc = "Chuyển đổi định dạng màu" },
  }
}

