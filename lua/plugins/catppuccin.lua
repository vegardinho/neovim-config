local function get_flavour()
  -- macOS exposes the active system appearance through defaults.
  if vim.fn.has("mac") == 1 then
    local appearance = vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null")
    return appearance:match("Dark") and "mocha" or "latte"
  end

  -- On Unix, prefer GNOME's explicit color-scheme setting, then fall back
  -- to its GTK theme name. SSH sessions or systems without GNOME both fall
  -- back to the dark flavour.
  if vim.fn.has("unix") == 1 then
    local colour_scheme = vim.fn.system(
      "gsettings get org.gnome.desktop.interface color-scheme 2>/dev/null"
    ):lower()
    if colour_scheme:match("dark") then
      return "mocha"
    elseif colour_scheme:match("light") then
      return "latte"
    end

    local gtk_theme = vim.fn.system(
      "gsettings get org.gnome.desktop.interface gtk-theme 2>/dev/null"
    ):lower()
    return gtk_theme:match("dark") and "mocha" or "latte"
  end

  return "mocha"
end

local flavour = get_flavour()

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
