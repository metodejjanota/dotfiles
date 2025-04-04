return {
    'rasulomaroff/reactive.nvim',
    config = function()
        local reactive = require('reactive')
        reactive.setup {
            builtin = {
                cursorline = true,
                cursor = true,
                modemsg = true
            } }
    end
}
