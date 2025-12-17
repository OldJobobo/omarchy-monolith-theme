return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#100e11", -- Default background
                base01 = "#ae9bb0", -- Lighter background (status bars)
                base02 = "#100e11", -- Selection background
                base03 = "#ae9bb0", -- Comments, invisibles
                base04 = "#faf9fa", -- Dark foreground
                base05 = "#faf9f9", -- Default foreground
                base06 = "#faf9f9", -- Light foreground
                base07 = "#faf9fa", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#e6b2b8", -- Variables, errors, red
                base09 = "#e8b0b7", -- Integers, constants, orange
                base0A = "#e3cab5", -- Classes, types, yellow
                base0B = "#78c0d3", -- Strings, green
                base0C = "#7ebcce", -- Support, regex, cyan
                base0D = "#7e7ece", -- Functions, keywords, blue
                base0E = "#e1afe1", -- Keywords, storage, magenta
                base0F = "#e3c9b5", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
