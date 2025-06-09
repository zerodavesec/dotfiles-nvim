return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    lazygit = {
      configure = true, -- automatically configure lazygit to use the current colorscheme
    },
  },
  keys = {
    -- Keymap to open lazygit
    {
      '<leader>Gg',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Lazy[G]it',
    },
    {
      '<leader>GG',
      function()
        require('snacks').lazygit { cwd = vim.fn.expand '%:p:h' }
      end,
      desc = 'Lazy[G]it (current file)',
    },
    {
      '<leader>Gf',
      function()
        require('snacks').lazygit.log_file()
      end,
      desc = 'Lazygit Current [F]ile History',
    },
    {
      '<leader>Gl',
      function()
        require('snacks').lazygit.log()
      end,
      desc = 'Lazygit [L]og',
    },
  },
}
