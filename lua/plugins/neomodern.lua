return -- Using lazy.nvim
{
	"cdmill/neomodern.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("neomodern").setup({
			-- optional configuration here
			-- Can be one of: 'iceclimber' | 'gyokuro' | 'hojicha' | 'roseprime'
			theme = "gyokuro",
			-- Can be one of: 'light' | 'dark', or set via vim.o.background
			variant = "dark",
			-- If true, docstrings will be highlighted like strings, otherwise they will be
			-- highlighted like comments. Note, behavior is dependent on the language server.
			colored_docstrings = true,
			-- If true, highlights the {sign,fold} column the same as cursorline
			cursorline_gutter = true,
			-- If true, highlights the gutter darker than the bg
			dark_gutter = false,
			-- if true favor treesitter highlights over semantic highlights
			favor_treesitter_hl = false,
			-- Don't set background of floating windows. Recommended for when using floating
			-- windows with borders.
			plain_float = false,
			-- Show the end-of-buffer character
			show_eob = true,
			-- If true, enable the vim terminal colors
			term_colors = true,
			-- Keymap (in normal mode) to toggle between light and dark variants.
			toggle_variant_key = nil,
			-- Don't set background
			transparent = true,
			-- The following table accepts values the same as the `gui` option for normal
			-- highlights. For example, `bold`, `italic`, `underline`, `none`.
			code_style = {
				comments = "italic",
				conditionals = "none",
				functions = "bold",
				keywords = "italic",
				headings = "bold", -- Markdown headings
				operators = "none",
				keyword_return = "none",
				strings = "none",
				variables = "none",
			},
		})
		require("neomodern").load()
	end,
}
