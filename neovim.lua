return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#232136", -- Base
                base01 = "#2a273f", -- Surface
                base02 = "#393552", -- Overlay / selection
                base03 = "#6e6a86", -- Muted / comments
                base04 = "#908caa", -- Subtle
                base05 = "#e0def4", -- Text
                base06 = "#e0def4", -- Light foreground
                base07 = "#e0def4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#eb6f92", -- Love
                base09 = "#f6c177", -- Gold
                base0A = "#ea9a97", -- Rose
                base0B = "#3e8fb0", -- Pine
                base0C = "#9ccfd8", -- Foam
                base0D = "#c4a7e7", -- Iris
                base0E = "#ea9a97", -- Rose (alt)
                base0F = "#56526e", -- Highlight high
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
