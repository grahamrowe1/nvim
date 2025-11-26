
-- Global
vim.api.nvim_create_user_command(
    "AddSheBang",
    function (opts) 
        vim.api.nvim_buf_set_lines(0, 0, 0, false, 
            {"#!" .. vim.fn.exepath(opts.fargs[1])})
    end,
    {nargs = 1, desc = "Adds #!... for the specified executable." }
)

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highligh_yank', {clear = true}),
    desc = "Highlight selection on yank",
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch', 
            timeout = 500,
        })
    end, -- callback
})
