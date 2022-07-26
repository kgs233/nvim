local saga = require("lspsaga")
saga.init_lsp_saga({
    move_in_saga = {' ',' ','',' ',"round"},
    finder_icons = {
        def = '  ',
        ref = '諭 ',
        link = '  ',
    },
})
