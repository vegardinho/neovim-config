local map = vim.keymap.set

map("c", "W", "w", { noremap = true })
map({ "n", "v", "o" }, "<<", ">>", { noremap = true })
map({ "n", "v", "o" }, ">>", "<<", { noremap = true })
map("n", "Q", "<Nop>", { noremap = true })
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
map("n", "ci<", "T>dt<i", { noremap = true })
map("n", "ci>", "T>dt<i", { noremap = true })
map("n", "p", "p==", { noremap = true })