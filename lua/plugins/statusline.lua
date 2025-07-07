return {
    -- Calls `require('slimline').setup({})`
    "sschleemilch/slimline.nvim",
    opts = {
        style = "bg",
        bold = true,
        hl = {
            secondary = "Comment",
        },
        spaces = {
            components = "",
            left = "",
            right = "",
        },
        sep = {
            hide = {
                first = true,
                last = true,
            },
            left = "",
            right = "",
        },
        configs = {
            mode = {
                hl = {
                    normal = "Type",
                    insert = "String",
                    pending = "Boolean",
                    visual = "Keyword",
                    command = "Normal",
                },
            },
            path = {
                -- directory = false,
                truncate = {
                    chars = 1,     -- number of characters for each path component
                    full_dirs = 2, -- how many path components to keep unshortened
                },
                icons = {
                    folder = ' ',
                    modified = '',
                    read_only = '',
                },
                hl = {
                    primary = "Boolean",
                },
            },
            git = {
                hl = {
                    primary = "Function",
                },
                icons = {
                    branch = '',
                    added = '+',
                    modified = '~',
                    removed = '-',
                },
            },
            recording = {
                icon = ' ',
            },
            filetype_lsp = {
                hl = {
                    primary = "String",
                },
            },
        },
    },
}
