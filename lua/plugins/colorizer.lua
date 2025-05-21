return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    filetypes = { "*" }, -- hoặc cụ thể như: { "css", "html", "javascript", "lua" }
    user_default_options = {
      RGB = true,         -- #RGB
      RRGGBB = true,      -- #RRGGBB
      names = true,       -- "red"
      RRGGBBAA = true,    -- #RRGGBBAA
      rgb_fn = true,      -- rgb(), rgba()
      hsl_fn = true,      -- hsl(), hsla()
      css = true,         -- css màu
      css_fn = true,      -- css functions như `rgba()`
      tailwind = true,    -- nếu bạn dùng tailwind
      mode = "background", -- hoặc "virtualtext"
    },
  },
  config = function(_, opts)
    require("colorizer").setup(opts)
  end,
}

