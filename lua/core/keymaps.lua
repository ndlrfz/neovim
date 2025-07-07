-- ~/.config/nvim/lua/core/keymap.lua

-- Define local variable for keymap function for convenience
local map = vim.keymap.set

-- Options for keymaps (optional, but good for readability)
local opts = { noremap = true, silent = true }

-- Load Telescope
local telescope = require('telescope.builtin') -- Penting: Akses picker dari .builtin

-- Better buffer navigation (using [b and ]b)
map("n", "[b", ":bprevious<CR>", { desc = "Buffer sebelumnya" })
map("n", "]b", ":bnext<CR>", { desc = "Buffer berikutnya" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Hapus buffer saat ini" })

-- ===========================================================================
-- Insert Mode
-- ===========================================================================
-- Tekan 'jk' dengan cepat untuk keluar dari Insert Mode
map("i", "jk", "<ESC>", opts)
map("i", "kj", "<ESC>", opts)

-- ===========================================================================
-- Visual Mode
-- ===========================================================================
-- Move selected text up/down (using J/K in Visual Mode)
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Pindah baris terpilih ke bawah" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Pindah baris terpilih ke atas" })

-- Keep selection after indenting
map("v", "<", "<gv", { desc = "Indentasi ke kiri dan pertahankan seleksi" })
map("v", ">", ">gv", { desc = "Indentasi ke kanan dan pertahankan seleksi" })


-- ===========================================================================
-- Telescope Keymaps
-- ===========================================================================

-- Find Files (cari file di proyek Anda)
map("n", "<leader>ff", telescope.find_files, { desc = "[F]ind [F]iles" })
-- Live Grep (cari teks di seluruh proyek Anda)
map("n", "<leader>fg", telescope.live_grep, { desc = "[F]ind by [G]rep (text)" })
-- Buffers (daftar buffer yang sedang terbuka)
map("n", "<leader>fb", telescope.buffers, { desc = "[F]ind [B]uffers" })
-- Help Tags (cari di dokumentasi Neovim)
map("n", "<leader>fh", telescope.help_tags, { desc = "[F]ind [H]elp Tags" })
-- Git Files (file yang dilacak oleh Git)
map("n", "<leader>gf", telescope.git_files, { desc = "Git [F]iles" })
-- Git Status (daftar perubahan Git)
map("n", "<leader>gs", telescope.git_status, { desc = "Git [S]tatus" })
-- Keymaps (daftar semua keymap Neovim Anda)
map("n", "<leader>fk", telescope.keymaps, { desc = "[F]ind [K]eymaps" })
-- Riwayat Command-line
map("n", "<leader>fc", telescope.commands, { desc = "[F]ind [C]ommands" })
-- Oldfiles (daftar file yang baru saja dibuka)
map("n", "<leader>fo", telescope.oldfiles, { desc = "[F]ind [O]ldfiles" })

-- Opsional: File Browser (jika Anda menginstal ekstensi telescope-file-browser)
-- map("n", "<leader>sf", function() telescope.extensions.file_browser.file_browser() end, { desc = "File Browser" })
-- map("n", "<leader>sd", function() telescope.extensions.file_browser.file_browser({ path = "%:p:h" }) end, { desc = "File Browser (Current Dir)" })

vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- NOTE: vkick TESTING FOR MINE ---cmd w
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })
vim.keymap.set("n", "x", '"_x', { desc = "Delete char without register" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "n", "nzz", { desc = "Find forward and center" })
vim.keymap.set("n", "N", "nzz", { desc = "Find backwards and center" })
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>b", ":enew <CR>", { desc = "Create blank buffer" })

-- Copy/paste from system clipboard
vim.keymap.set({ 'n', 'x' }, 'cx', '"+y')
vim.keymap.set({ 'n', 'x' }, 'cv', '"+p')
-- Delete without changing the registers
vim.keymap.set({ 'n', 'x' }, 'x', '"_x')
