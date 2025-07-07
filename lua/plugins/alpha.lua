return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        local logo = [[

······························
:░█▀▀░█▀█░▀▀█░█▀█░█▀▀░█░█░█▀█:
:░█▀▀░█▀█░▄▀░░█▀█░▀▀█░░█░░█▀█:
:░▀░░░▀░▀░▀▀▀░▀░▀░▀▀▀░░▀░░▀░▀:
······························

    [@ndlrfz]

    ]]

        dashboard.section.header.val = vim.split(logo, "\n", { trimempty = true })
        dashboard.section.buttons.val = {
            dashboard.button("<Leader>tp", "󱁴 Browse Projects"),
            dashboard.button("<leader>qq", "󰈆 Quit", ":qa<cr>")
        }
        alpha.setup(dashboard.config)
    end,
}
