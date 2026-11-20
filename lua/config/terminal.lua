-- Request tmux cursor styles for insert, replace, and normal modes.
vim.cmd([[let &t_SI .= "\<esc>Ptmux;\<esc>\<esc>[6 q\<esc>\\"]])
vim.cmd([[let &t_EI .= "\<esc>Ptmux;\<esc>\<esc>[2 q\<esc>\\"]])
vim.cmd([[let &t_SR .= "\<esc>Ptmux;\<esc>\<esc>[4 q\<esc>\\"]])
