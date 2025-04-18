return{
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function() -- without config lazy doesnt load it
            require("lualine").setup({
                options = { theme = 'palenight' },
            })
        end,
    }
}
