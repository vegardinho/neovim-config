local group = vim.api.nvim_create_augroup("user_autocmds", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = "text",
  callback = function(args)
    vim.bo[args.buf].textwidth = 78
  end,
})
