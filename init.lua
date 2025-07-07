-- basic options
require("core.options")

-- Set leader key (biasanya spasi)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

-- Muat keymap Anda
require("core.keymaps")

require("lspconfig").djlsp.setup({
	cmd = { "/home/ndlr/.local/bin/djlsp" },
})
