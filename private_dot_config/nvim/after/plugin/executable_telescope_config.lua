-- verificar instalação

require('telescope').setup({
    defaults = {
        path_display = {
            shorten = {
                len = 3, exclude = {1, -1}
            },
            truncate = true
        },
        dynamic_preview_title = true,
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = 'smart_case'         -- or 'ignore_case' or 'respect_case'
        },
        ['ui-select'] = {
            require('telescope.themes').get_dropdown({
                -- even more opts
            })
        }
        -- pseudo code / specification for writing custom displays, like the one
        -- for 'codeactions'
        -- specific_opts = {
        --   [kind] = {
        --     make_indexed = function(items) -> indexed_items, width,
        --     make_displayer = function(widths) -> displayer
        --     make_display = function(displayer) -> function(e)
        --     make_ordinal = function(e) -> string
        --   },
        --   -- for example to disable the custom builtin 'codeactions' display
        --      do the following
        --   codeactions = false,
        -- }
    }
})

require('telescope').load_extension('ui-select')
require('telescope').load_extension('fzf')
require('mappings').setup_telescope()
