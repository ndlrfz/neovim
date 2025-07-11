local telescope_builtin = require 'telescope.builtin'

return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {},
  config = function()
    require('which-key').setup {
      preset = 'helix',

      icons = {
        separator = ' ',
        mappings = false,
      },

      layout = { spacing = 4 },
    }

    require('which-key').add {
      -- { '-', vim.cmd.Oil, desc = 'Open oil.nvim' },
      -- { 'zM', ufo.closeAllFolds, desc = 'Close all folds' },
      -- { 'zR', ufo.openAllFolds, desc = 'Open all folds' },

      -- { '<leader>s', vim.cmd.update, desc = 'Save' },
      -- { '<leader>y', '"+y', desc = 'Copy to system clipboard', mode = 'v' },
      --
      -- { "<leader>'", telescope_builtin.git_status, desc = 'Changed files' },
      -- { '<leader>;', telescope_builtin.find_files, desc = 'Find files' },
      -- { '<leader>?', telescope_builtin.live_grep, desc = 'Grep in all files' },
      --
      -- { '<leader>a', group = 'actions' },
      -- { '<leader>ab', '"_', desc = 'Black hole register' },
      -- { '<leader>ac', '<cmd>ColorizerToggle<CR>', desc = 'Toggle colorizer' },
      -- { '<leader>ad', 'diwxda"<CR>', desc = 'Delete HTML attribute' },
      -- { '<leader>ae', '<cmd>EslintFixAll<CR>', desc = 'Fix all ESLint errors' },        -- { '<leader>aK', vim.lsp.buf.hover, desc = 'Show hover' },        -- { '<leader>ar', vim.cmd.TSRemoveUnused, desc = 'Remove unused imports' },
      -- { '<leader>at', vim.cmd.TSOrganizeImports, desc = 'Organize imports' },
      -- { '<leader>ai', vim.cmd.TSAddImports, desc = 'Add imports' },
      --
      -- -- Diagnostics
      -- { '<leader>e', group = 'trouble' },
      -- { '<leader>ee', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Open Trouble list' },
      -- { '<leader>ed', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'Document Diagnostics' },
      -- { '<leader>eq', '<cmd>Trouble qflist<cr>', desc = 'Quickfix' },
      -- { '<leader>el', '<cmd>Trouble loclist<cr>', desc = 'Loclist' },
      --

      -- -- Git
      { '<leader>g', group = 'git' },
      { '<leader>gb', telescope_builtin.git_branches, desc = 'Git branches' },
      { '<leader>gp', '<cmd>Git push<CR>', desc = 'git push' },
      { '<leader>gs', '<cmd>Git<CR>', desc = 'git status' },
      { '<leader>gu', '<cmd>!git up<CR>', desc = 'git up' },
      { '<leader>gz', '<cmd>Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle git blame on line' },

      { '<leader>gc', group = 'Commit history' },
      { '<leader>gcb', telescope_builtin.git_bcommits, desc = 'Buffer commits' },
      { '<leader>gcc', telescope_builtin.git_commits, desc = 'Git commits' },
      { '<leader>gcs', telescope_builtin.git_stash, desc = 'Git stash' },

      { '<leader>gh', group = 'Git signs' },
      { '<leader>ghp', '<cmd>Gitsigns preview_hunk<CR>', desc = 'Preview hunk' },
      { '<leader>ghr', '<cmd>Gitsigns reset_hunk<CR>', desc = 'Reset hunk' },
      { '<leader>ghs', '<cmd>Gitsigns stage_hunk<CR>', desc = 'Stage hunk' },

      { '<leader>ght', group = 'Toggle highlights' },
      { '<leader>ghtg', '<cmd>Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle git blame on line' },
      { '<leader>ghtl', '<cmd>Gitsigns toggle_linehl<CR>', desc = 'Toggle line highlights' },
      { '<leader>ghtg', '<cmd>Gitsigns toggle_numhl<CR>', desc = 'Toggle number highlights' },
      { '<leader>ghts', '<cmd>Gitsigns toggle_signs<CR>', desc = 'Toggle signs' },
      { '<leader>ghtw', '<cmd>Gitsigns toggle_word_diff<CR>', desc = 'Toggle word diff highlights' },
      --
      -- -- -- Harpoon
      -- -- { '<leader>h', group = 'Harpoon' },
      -- -- { '<leader>ha', harpoon_mark.add_file, desc = 'Add file to harpoon' },
      -- -- { '<leader>hc', harpoon_mark.clear_all, desc = 'Clear all files from harpoon' },
      -- -- { '<leader>hl', harpoon_ui.toggle_quick_menu, desc = 'Toggle quick menu' },
      -- -- { '<leader>hn', harpoon_ui.nav_next, desc = 'Next file' },
      -- -- { '<leader>hp', harpoon_ui.nav_prev, desc = 'Previous file' },
      -- -- { '<leader>hr', harpoon_mark.rm_file, desc = 'Remove file from harpoon' },
      -- -- { '<leader>h1', "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = 'Navigate to file 1' },
      -- -- { '<leader>h2', "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = 'Navigate to file 2' },
      -- -- { '<leader>h3', "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = 'Navigate to file 3' },
      -- -- { '<leader>h4', "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", desc = 'Navigate to file 4' },
      --
      -- {
      --   '<leader>ih',
      --   function()
      --     vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      --   end,
      --   desc = 'Toggle inlay hints',
      -- },
      --
      -- Telescope
      -- { '<leader>t', group = 'Telescope' },
      -- { '<leader>tb', telescope_builtin.buffers, desc = 'Open buffers' },
      -- { '<leader>td', telescope_builtin.lsp_document_symbols, desc = 'Symbols in document' },
      -- { '<leader>th', telescope_builtin.help_tags, desc = 'Telescope help tags' },
      -- { '<leader>tm', telescope_builtin.marks, desc = 'Telescope marks' },
      -- { '<leader>to', telescope_builtin.oldfiles, desc = 'Recently opened files' },
      -- { '<leader>ts', telescope_builtin.spell_suggest, desc = 'Suggest spelling' },
      -- { '<leader>tt', '<cmd>TodoTelescope<CR>', desc = 'Todo list' },
      -- { '<leader>tw', telescope_builtin.lsp_dynamic_workspace_symbols, desc = 'Symbols in workspace' },
      -- { '<leader>tz', '<cmd>Telescope zoxide list<CR>', desc = 'Zoxide' },
      -- Standalone group
      { '<leader>l', group = 'LSP commands' },

      -- Liveserver
      { '<leader>s', group = 'LiveServer' },
      { '<leader>sp', '<cmd> LiveServerStart <CR>', desc = 'Start LiveServer' },
      { '<leader>st', '<cmd> LiveServerStop <CR>', desc = 'Stop LiveServer' },

      -- Windows
      { '<leader>w', group = 'Windows Management' },
      { '<leader>w|', '<cmd> vsplit <CR>', desc = 'Split window vertical' },
      { '<leader>wc', '<cmd> close <CR>', desc = 'Close current window' },

      -- Git
      { '<leader>h', group = 'Git Stuff' },
      -- Quit
      { '<leader>q', group = 'Quit?' },
      { '<leader>qq', '<cmd> qa! <CR>', desc = 'Quit Neovim' },
      { '<leader>ql', '<cmd> Lazy <CR>', desc = 'Lazyvim ...' },
      { '<leader>qm', '<cmd> Mason <CR>', desc = 'Mason ...' },
      -- Telescope
      { '<leader>t', group = 'Telescope' },
      { '<leader>tp', '<cmd> Telescope projects <CR>', desc = 'Open projects' },
      { '<leader>tt', '<cmd> TodoLocList <CR>', desc = 'Todo in the code' },
      { '<leader>to', telescope_builtin.oldfiles, desc = 'Open old files' },
      { '<leader>ts', telescope_builtin.lsp_document_symbols, desc = 'Search symbol' },
      { '<leader>tb', telescope_builtin.buffers, desc = 'List buffers' },
      { '<leader>tf', telescope_builtin.find_files, desc = 'Find files' },
      { '<leader>tg', telescope_builtin.live_grep, desc = 'Grep in files' },
      { '<leader>td', telescope_builtin.diagnostics, desc = 'Search diagnostics' },
      { '<leader>th', telescope_builtin.help_tags, desc = 'Search help' },
      { '<leader>tk', telescope_builtin.keymaps, desc = 'Search keymaps' },
    }
  end,
}
