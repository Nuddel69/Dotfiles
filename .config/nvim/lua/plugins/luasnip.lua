return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    version = "2.*",
    config = function()
      local ls = require("luasnip")
      ls.setup({ enable_autosnippets = true })
    end,
  },
}

-- return {
--   "L3MON4D3/LuaSnip",
--   opts = {
--     history = true,
--     enable_autosnippets = true,
--     delete_check_events = "TextChanged",
--   },
--   config = function()
--     -- require("luasnip.loaders.from_vscode").lazy_load({
--     --   exclude = { "tex" },
--     -- })
--     require("luasnip.loaders.from_lua").lazy_load({ paths = { "~/.config/nvim/lua/luasnippets/" } })
--   end,
-- }
