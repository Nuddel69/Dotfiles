return {
  "michaelrommel/nvim-silicon",
  opts = {
    font = "MesloLGL Nerd Font Mono=26",
    to_clipboard = true,
    background = "#fff0",
  },
  keys = {
    { "<leader>i", desc = "image", mode = { "v" } },
    {
      "<leader>ic",
      function()
        require("nvim-silicon").shoot()
      end,
      mode = { "v" },
      desc = "Snapshot Code to Clipboard",
    },
  },
}
