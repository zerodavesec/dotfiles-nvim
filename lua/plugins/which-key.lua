return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.o.timeoutlen
    delay = 0,
    preset = 'modern',
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      mappings = vim.g.have_nerd_font,
      -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
      -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
      separator = '➜',
      colors = true,
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },

    -- Document existing key chains
    spec = {
      -- Help
      { '<leader>?', desc = 'Keybinding Help', icon = { icon = '󰮥', color = 'cyan' } },

      -- telescope
      { '<leader>s', group = '[S]earch', icon = { icon = '' } },
      { '<leader>sh', desc = '[S]earch [H]elp', icon = { icon = '󰮥', color = 'cyan' } },
      { '<leader>sk', desc = '[S]earch [K]eymaps', icon = { icon = '󰌌', color = 'cyan' } },
      { '<leader>sn', desc = '[S]earch [N]eovim Files', icon = { icon = '', color = 'cyan' } },
      { '<leader>sf', desc = '[S]earch [F]iles', icon = { icon = '󰱽', color = 'cyan' } },
      { '<leader>sd', desc = '[S]earch [D]iagnostics', icon = { icon = '', color = 'cyan' } },
      {
        '<leader>ss',
        desc = '[S]earch [S]elect Telescope',
        icon = { icon = '', color = 'cyan' },
      },
      { '<leader>sw', desc = '[S]earch current [W]ord', icon = { icon = '', color = 'cyan' } },
      { '<leader>sg', desc = '[S]earch by [G]rep', icon = { icon = '󱎸', color = 'cyan' } },
      { '<leader>sr', desc = '[S]earch [R]esume', icon = { icon = '', color = 'cyan' } },
      { '<leader>s.', desc = '[S]earch Recent Files', icon = { icon = '', color = 'cyan' } },
      { '<leader>sb', desc = '[S]earch Open [B]uffers', icon = { icon = '', color = 'cyan' } },
      {
        '<leader>sc',
        desc = '[S]earch Fuzzily in [C]urrent Buffer',
        icon = { icon = '󱁵', color = 'cyan' },
      },

      -- Neotree Explorer
      { '<leader>e', desc = 'Open [E]xplorer', icon = { icon = '󰙅', color = 'cyan' } },
      -- Buffers
      { '<leader>b', group = '[B]uffers', icon = '' },
      { '<leader>bb', desc = '[B] Create Buffer' },
      { '<leader>bx', desc = '[X] Close Buffer' },

      -- Tab Operations
      { '<leader>t', group = '[T]abs', icon = '󰓩' },
      { '<leader>to', desc = '[O]pen New Tab' },
      { '<leader>tx', desc = '[X] Close New Tab' },
      { '<leader>tn', desc = '[N]ext Tab' },
      { '<leader>tp', desc = '[P]revious Tab' },

      -- Toggling Operations
      --            { '<leader>---', group = '[T]oggle', icon = '' },
      --           { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },

      -- Project Related Action
      { '<leader>p', group = '[P]roject Options', icon = '' },
      { '<leader>pv', desc = 'Project [V]iew', icon = '' },

      -- Find and Replace
      { '<leader>r', group = 'Find and [R]eplace', icon = '󰛔' },
      { '<leader>ri', desc = 'Case [I]nsensitive', icon = '󰛔' },
      { '<leader>rr', desc = 'Case Sensitive', icon = '󰛔' },

      -- Line Operations
      { '<leader>l', group = '[L]ine Operations', icon = '󰘤' },
      { '<leader>lw', desc = '[L]ine [W]rapping', icon = '󰘤' },

      -- LSP and Goto's
      { '<leader>G', group = '[G]oto and LSP Actions', icon = { icon = '󰢱', color = 'orange' } },
      --rest of keybindins for this and descriptions in lsp.lua
      --
      --
      -- LazyGit Actions
      { '<leader>g', group = '[g]it LazyGit', icon = { icon = '', color = 'cyan' } },
      { '<leader>gg', desc = 'Lazy[g]it Current File', icon = { icon = '', color = 'cyan' } },
      { '<leader>gG', desc = 'Lazy[G]it', icon = { icon = '', color = 'cyan' } },
      { '<leader>gf', desc = 'Lazygit [F]ile History', icon = { icon = '', color = 'cyan' } },
      { '<leader>gL', desc = 'Lazygit [L]og', icon = { icon = '', color = 'cyan' } },
      -- rest of keybindings for LazyGit in lazygit.lua
    },
  },
}
