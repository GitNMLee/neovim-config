require('plugins')

-- Line numbers
vim.o.number = true

-- Enable copying to system wide clipboard
vim.opt.clipboard = 'unnamedplus'

-- Turn on auto-format on save for C/C++
vim.api.nvim_create_augroup("AutoFormat", {})
vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = {"*.c", "*.h", "*.hpp", "*.cpp"},
        group = "AutoFormat",
        callback = function()
            vim.cmd("silent !garmin-clang-format -i %")            
            vim.cmd("edit")
        end,
    }
)
