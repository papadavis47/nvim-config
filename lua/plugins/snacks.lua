return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>z",
        function()
          Snacks.dashboard()
        end,
        desc = "Dashboard",
      },
    },
  },
}
