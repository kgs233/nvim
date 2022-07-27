local tabline = require('tabline')
tabline.setup {
    enable = false
}

local ayu_mirage = require('lualine.themes.ayu_mirage')
ayu_mirage.normal.a.bg = '#87CEEB'

require('lualine').setup {
    options = { theme  = ayu_mirage },
    tabline = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { tabline.tabline_buffers },
        lualine_x = { tabline.tabline_tabs },
        lualine_y = {},
        lualine_z = {"os.date('%H:%M:%S')" },
    },
}
