return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    notifier = {
      timeout = 3000, -- default timeout in ms
      width = { min = 40, max = 0.4 },
      height = { min = 1, max = 0.6 },
      -- editor margin to keep free. tabline and statusline are taken into account automatically
      margin = { top = 0, right = 1, bottom = 0 },
      padding = true, -- add 1 cell of left/right padding to the notification window
      sort = { 'level', 'added' }, -- sort by level and time
      -- minimum log level to display. TRACE is the lowest
      -- all notifications are stored in history
      level = vim.log.levels.TRACE,
      icons = {
        error = ' ',
        warn = ' ',
        info = ' ',
        debug = ' ',
        trace = ' ',
      },
      keep = function(notif)
        return vim.fn.getcmdpos() > 0
      end,
      ---@type snacks.notifier.style
      style = 'fancy',
      top_down = true, -- place notifications from top to bottom
      date_format = '%R', -- time format for notifications
      -- format for footer when more lines are available
      -- `%d` is replaced with the number of lines.
      -- only works for styles with a border
      ---@type string|boolean
      more_format = ' ↓ %d lines ',
      refresh = 50, -- refresh at most every 50ms
    },
    lazygit = {
      configure = true, -- automatically configure lazygit to use the current colorscheme
    },
    dashboard = {
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1 },
        {
          icon = ' ',
          title = 'Recent Files',
          section = 'recent_files',
          indent = 2,
          padding = { 2, 2 },
        },
        { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 2 },
        { section = 'startup' },
      },
    },
  },
  keys = {
    -- Keymap to open lazygit

    {
      '<leader>gG',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Lazy[G]it',
    },
    {
      '<leader>gg',
      function()
        require('snacks').lazygit { cwd = vim.fn.expand '%:p:h' }
      end,
      desc = 'Lazy[G]it (current file)',
    },
    {
      '<leader>gf',
      function()
        require('snacks').lazygit.log_file()
      end,
      desc = 'Lazygit Current [F]ile History',
    },
    {
      '<leader>gL',
      function()
        require('snacks').lazygit.log()
      end,
      desc = 'Lazygit [L]og',
    },
  },
}
