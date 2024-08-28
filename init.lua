-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.colorcolumn = "80" -- vertical ruler

vim.opt.relativenumber = true -- relative to current line

vim.opt.tabstop = 4 -- tab size
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.spelllang = "en_us" -- spell checking language
vim.opt.spell = true -- enable spell checking

if vim.g.neovide then
	-- Put anything you want to happen only in Neovide here
	vim.o.guifont = "RobotoMono_Nerd_Font_Mono:h11"
	vim.opt.linespace = 0
	vim.g.neovide_transparency = 0.9
end

vim.g.codeium_no_map_tab = 1 -- disable tab in codeium
