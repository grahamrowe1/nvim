return {
    'nvim-telescope/telescope.nvim',

    config = function() 
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'GIT find files' })
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)

        vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float, { noremap = true, silent = true })
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true })
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true })
    end, -- config   
}
