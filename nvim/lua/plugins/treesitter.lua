require 'nvim-treesitter.configs'.setup {
    --Add different langures
    ensure_installed = {"vim", "help", "bash", "c", "cpp", "javascript", "json", "lua", "python", "markdown", "cmake", "make"},

    highlight = { enable = true },
    indent = { enable = true },

    --Different brackets use different color to organize
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
