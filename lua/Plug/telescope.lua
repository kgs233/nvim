local actions = require("telescope.actions")

require("telescope").setup {
    defaults = {
        mappings = {
            i=
                {
                    ["<Esc>"] = actions.close,
            },
            n = {
                ["<Esc>"] = actions.close,
                ["q"] = actions.close,
            }
        },
        file_ignore_patterns = {"./node_modules"}
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        }
    }
}

require("telescope").load_extension("fzf")
