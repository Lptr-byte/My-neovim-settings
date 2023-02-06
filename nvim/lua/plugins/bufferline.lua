vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        numbers = "ordinal", --use ordinal

        indicator = {
                icon = '▎', -- this should be omitted if indicator style is not 'icon'
                style = 'icon',
            },
        diagnostics = "nvim-lsp", -- Use nvim-lsp
        -- Make sure nvim-tree can show in the left
        offsets = {{
            filetype = "NvimTree",
            text = "夜々世界一かわいい!",
            highlight = "Directory",
            text_align = "left"
        }},
        
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_buffer_default_icon = true,
        show_close_icon = true,
        separator_style = "slant" --Change separator_style to "slant"

    }
}
