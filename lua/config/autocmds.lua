local group = vim.api.nvim_create_augroup("user_autocmds", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  -- Plain text is easier to read with a narrower wrapping width.
  pattern = "text",
  callback = function(args)
    vim.bo[args.buf].textwidth = 78
  end,
})
