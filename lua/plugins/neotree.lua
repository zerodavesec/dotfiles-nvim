return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
    },
    lazy = false,
    keys = {
        { '<leader>e', ':Neotree reveal<CR>', desc = 'Open [E]xplorer', silent = true },
    },
    opts = {
        close_if_last_window = false,
        enable_git_status = true,
        sources = { 'filesystem', 'buffers', 'git_status' },
        source_selector = {
            winbar = true,
            statusline = false,
            content_layout = 'center',
            sources = {
                { source = 'filesystem', display_name = ' 󰉓 Files ' },
                { source = 'buffers', display_name = ' 󰈚 Buffers ' },
                { source = 'git_status', display_name = ' 󰊢 Git ' },
            },
        },
        filesystem = {
            never_show = {
                '.DS_Store',
                'thumbs.db',
            },
            window = {
                position = 'left',
                width = 35,
                mappings = {
                    ["<"] = "prev_source",
                    [">"] = "next_source",
                    ['h'] = 'toggle_hidden',
                    ['<leader>e'] = 'close_window',
                    ['o'] = {
                        'show_help',
                        nowait = false,
                        config = { title = 'Order by', prefix_key = 'o' },
                    },
                    ['oc'] = { 'order_by_created', nowait = false },
                    ['od'] = { 'order_by_diagnostics', nowait = false },
                    ['og'] = { 'order_by_git_status', nowait = false },
                    ['om'] = { 'order_by_modified', nowait = false },
                    ['on'] = { 'order_by_name', nowait = false },
                    ['os'] = { 'order_by_size', nowait = false },
                    ['ot'] = { 'order_by_type', nowait = false },
                },
            },
        },
    },
}
