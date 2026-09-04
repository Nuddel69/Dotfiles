return {
  "paradoxical-dev/zeal.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>fd",
      function()
        require("zeal").search()
      end,
      desc = "Search Zeal docs",
    },
    {
      "<leader>K",
      function()
        local query = vim.fn.expand("<cword>")
        require("zeal").search_ft(query)
      end,
      desc = "Search Zeal docs by ft for current word",
    },
  },

  opts = {
    browser = "w3m",
    use_tmux = true,
    tmux = {
      width = "80%",
      height = "80%",
      additional_options = "-bdouble",
    },
    picker = {
      type = "snacks",
      snacks = {
        layout = "select",
      },
    },
    ft_map = {
      c = { "C", "GLFW_Contrib", "Vulkan_Contrib" },
      cpp = { "C++", "GLFW_Contrib", "Vulkan_Contrib" },
      txt = { "CMake" },
      cmake = { "CMake" },
      tex = { "LaTeX", "LaTeX_Math_Symbols_Cheatsheet" },
    },
  },
}
