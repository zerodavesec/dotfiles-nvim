return {
  -- not using picker yet
  'folke/snacks.nvim',
  opts = {
    picker = {},
  },
  keys = {
    -- Top Pickers & Explorer
    {
      '<leader>ff',
      function()
        Snacks.picker.smart()
      end,
      desc = 'Smart Find Files',
    },
  },
}
