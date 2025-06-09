return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    lazygit = {
      -- Configure the lazygit integration
      configure = true, -- automatically configure lazygit to use the current colorscheme
      -- You can also pass a table to configure lazygit
      -- configure = {
      --   theme = {
      --     activeBorderColor = { fg = "WarningMsg", bold = true },
      --     inactiveBorderColor = { fg = "FloatBorder" },
      --   },
      -- },

      -- Lazygit command and arguments
      cmd = 'lazygit',
      args = {},

      -- Window configuration
      width = 0, -- full width
      height = 0, -- full height
      border = 'none', -- border style: "none", "single", "double", "rounded", "solid", "shadow"

      -- Working directory options
      cwd = nil, -- use current working directory, or specify a path

      -- Environment variables
      env = {
        -- GIT_WORK_TREE = vim.loop.cwd(),
        -- GIT_DIR = vim.fn.finddir(".git", ".;"),
      },

      -- Keymaps within lazygit
      keys = {
        -- You can define custom keymaps here if needed
        -- ["<esc>"] = "close",
      },
    },
  },
  keys = {
    -- Keymap to open lazygit
    {
      '<leader>Gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>GG',
      function()
        Snacks.lazygit { cwd = vim.fn.expand '%:p:h' }
      end,
      desc = 'Lazygit (current file)',
    },
    {
      '<leader>Gf',
      function()
        Snacks.lazygit.log_file()
      end,
      desc = 'Lazygit Current File History',
    },
    {
      '<leader>Gl',
      function()
        Snacks.lazygit.log()
      end,
      desc = 'Lazygit Log',
    },
  },
}

-- Alternative minimal configuration if you're not using lazy.nvim:
--[[
require("snacks").setup({
  lazygit = {
    configure = true,
  },
})

-- Set up keymaps
vim.keymap.set("n", "<leader>gg", function()
  require("snacks").lazygit()
end, { desc = "Lazygit" })

vim.keymap.set("n", "<leader>gf", function()
  require("snacks").lazygit.log_file()
end, { desc = "Lazygit Current File History" })
--]]
