-- ~/.config/nvim/lua/plugins/telescope.lua

return {
  'nvim-telescope/telescope.nvim',
  -- tag = '0.1.x', -- atau 'master' untuk versi terbaru (hati-hati, bisa ada breaking changes)
  dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }, },
  config = function()
    require('telescope').setup {
      -- Di sini kita akan meletakkan opsi konfigurasi Telescope
      defaults = {
        -- Opsi default untuk semua picker Telescope
        -- Lihat bagian selanjutnya untuk detail
      },
      pickers = {
        -- Opsi khusus untuk picker tertentu (misalnya, find_files, live_grep)
      },
      extensions = {
        -- Konfigurasi untuk ekstensi Telescope
        -- Misalnya, Telescope-fzf-native, Telescope-file-browser
            fzf = {
          -- Aktifkan semua opsi fzf-native untuk performa
          fuzzy = true,                   -- fzy-style multi-word fuzzy matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "smart_case",       -- atau "ignore_case", "respect_case"
        },
      },
    }

    -- Opsional: Muat ekstensi jika Anda menggunakannya
    -- require('telescope').load_extension('fzf')
    -- require('telescope').load_extension('file_browser')
  end,
}
