if vim.fn.has("linux") == 1 then
  -- OSC 52 sends clipboard operations through the terminal, so they also
  -- work from SSH sessions without an X11 or Wayland display.
  local osc52 = require("vim.ui.clipboard.osc52")

  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = osc52.copy("+"),
      ["*"] = osc52.copy("*"),
    },
    paste = {
      ["+"] = osc52.paste("+"),
      ["*"] = osc52.paste("*"),
    },
  }
end
