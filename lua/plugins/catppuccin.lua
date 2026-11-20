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

return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({ flavour = flavour })
    vim.cmd.colorscheme("catppuccin-" .. flavour)
  end,
}
