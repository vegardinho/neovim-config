local flavour = "mocha"

if vim.fn.has("mac") == 1 then
  local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
  local appearance = handle and handle:read("*a") or ""

  if handle then
    handle:close()
  end

  if not appearance:match("Dark") then
    flavour = "latte"
  end
end

require("catppuccin").setup({ flavour = flavour })
vim.cmd.colorscheme("catppuccin-" .. flavour)

require("lualine").setup({
  options = {
    theme = "catppuccin-nvim",
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
})
