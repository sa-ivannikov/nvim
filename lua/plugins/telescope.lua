return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")

            telescope.setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<C-h>"] = "which_key",
                            ["<C-j>"] = "move_selection_next",
                            ["<C-k>"] = "move_selection_previous",
                        }
                    }
                },
                pickers = {
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({})
                    }
                }
            })

            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>b", builtin.buffers, {})
            vim.keymap.set("n", "<leader>g", builtin.grep_string, {})
            vim.keymap.set("v", "<leader>g", builtin.grep_string, {})

            telescope.load_extension("ui-select")
        end,
    }
}
