return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require('tokyonight').setup {
            styles = {},
        }
        vim.cmd.colorscheme 'tokyonight-night'
    end
}
