return {
    {
        "neanias/everforest-nvim",
        name = "everforest",
        lazy = false,
        priority = 1000,

        opts = {
            background = "hard",
            transparent_background = true,
            disable_italic_comments = true,

            on_highlights = function(hl, c)
                local statusline_bg = c.bg_dim

                hl.StatusLine = { bg = statusline_bg, fg = c.fg }
                hl.StatusLineMode = { bg = statusline_bg, fg = c.green, bold = true }
                hl.StatusLinePath = { bg = statusline_bg, fg = c.fg }
                hl.StatusLineBranch = { bg = statusline_bg, fg = c.green }
                hl.StatusLineError = { bg = statusline_bg, fg = c.red }
                hl.StatusLineWarn = { bg = statusline_bg, fg = c.yellow }
                hl.StatusLineHint = { bg = statusline_bg, fg = c.blue }
                hl.StatusLineLines = { bg = statusline_bg, fg = c.grey0 }
                hl.StatusLineFileSize = { bg = statusline_bg, fg = c.grey0 }
                hl.StatusLineCur = { bg = statusline_bg, fg = c.green, bold = true }
                hl.ColorColumn = { bg = c.bg1 }
                hl.CursorLine = { bg = c.bg1 }
                hl.CursorColumn = { bg = c.bg1 }
                hl.Comment = { fg = c.grey0, italic = false }
                hl["@comment"] = { fg = c.grey0, italic = false }
                hl["@comment.documentation"] = { fg = c.grey0, italic = false }
                hl.DiagnosticUnderlineError = { underline = true, undercurl = false, sp = c.red }
                hl.DiagnosticUnderlineWarn = { underline = true, undercurl = false, sp = c.yellow }
                hl.DiagnosticUnderlineInfo = { underline = true, undercurl = false, sp = c.blue }
                hl.DiagnosticUnderlineHint = { underline = true, undercurl = false, sp = c.aqua }
            end,
        },

        config = function(_, opts)
            vim.o.background = "dark"
            require("everforest").setup(opts)
            vim.cmd.colorscheme("everforest")
        end,
    },
}
