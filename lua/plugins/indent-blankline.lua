return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = function(_, opts)
        -- Other blankline configuration here
        return require("indent-rainbowline").make_opts(opts, {
            -- How transparent should the rainbow colors be. 1 is completely opaque, 0 is invisible. 0.07 by default
            color_transparency = 0.15,
            -- The 24-bit colors to mix with the background. Specified in hex.
            -- { 0xffff40, 0x79ff79, 0xff79ff, 0x4fecec, } by default
            colors = { 0xff0000, 0x00ff00, 0x0000ff, },
            scope = { enabled = true }, -- Opsional, bisa diaktifkan jika perlu
            exclude = {
                filetypes = {
                    "help", "terminal", "lazy", "mason",
                    "NvimTree", "lspinfo", "Trouble",
                    "TelescopePrompt", "undotree", "checkhealth",
                },
            },
            -- Contoh styling
            indent = {
                char = "│",
                tab_char = "│",
            },

        })
    end,
    dependencies = {
        "TheGLander/indent-rainbowline.nvim",
    },
}
