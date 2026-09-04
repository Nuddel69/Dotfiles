return {
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    config = function()
      require("luasnip-latex-snippets").setup({ use_treesitter = true })
    end,
  },
}
