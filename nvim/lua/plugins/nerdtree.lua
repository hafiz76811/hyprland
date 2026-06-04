return {
	"scrooloose/nerdtree",
	config = function()
		-- vim.keymap.set(mode, key, command, options)
		vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>", { silent = true })
		vim.keymap.set("n", "<C-n>", ":NERDTree<CR>", { silent = true })
		vim.keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>", { silent = true })
		vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>", { silent = true })

		vim.g.NERDTreeDirArrowExpandable = '▸'
		vim.g.NERDTreeDirArrowCollapsible = '▾'
		vim.g.NERDTreeQuitOnOpen = 1
	end,
}
