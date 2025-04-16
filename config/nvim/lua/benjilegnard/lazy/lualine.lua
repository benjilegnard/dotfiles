return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "catppuccin",
                disabled_filetypes = {
                    "NvimTree",
                    "dashboard",
                    -- trouble
                    "trouble",
                    "qf",
                    -- undotree
                    "undotree",
                    "diff",
                    -- diffview
                    "DiffviewFiles",
                    -- avante
                    "Avante",
                    "AvanteSelectedFiles",
                    "AvanteInput",
                },
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { { 'mode', separator = { left = '', right = '' } } },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { { 'location', separator = { right = '' } } },
            },
        })
    end,
}
