local map = vim.keymap.set

map("c", "W", "w", { noremap = true })
-- These mappings intentionally swap angle-bracket indentation motions.
map({ "n", "v", "o" }, "<<", ">>", { noremap = true })
map({ "n", "v", "o" }, ">>", "<<", { noremap = true })
map("n", "Q", "<Nop>", { noremap = true })
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
map("n", "ci<", "T>dt<i", { noremap = true })
map("n", "ci>", "T>dt<i", { noremap = true })
-- Re-indent after paste in normal mode.
map("n", "p", "p==", { noremap = true })