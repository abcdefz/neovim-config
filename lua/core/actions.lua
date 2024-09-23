local api = vim.api

local format_group = api.nvim_create_augroup("FormatAutogroup", { clear = true })

api.nvim_create_autocmd("BufWritePre", {
    group = format_group,
    pattern = "*.go",
    callback = function()
        vim.cmd([[%!gofmt]])
    end,
})

-- api.nvim_create_autocmd("BufWritePre", {
--     group = format_group,
--     pattern = "*.py",
--     callback = function()
--         vim.cmd([[:!ruff format %]])
--     end,
-- })
