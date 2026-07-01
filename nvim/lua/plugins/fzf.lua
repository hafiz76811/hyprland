return {
	"junegunn/fzf.vim",
	dependencies = { "junegunn/fzf" },
	build = "./install --all",
	config = function()
		vim.keymap.set("n", "<C-/>", ":FZF<CR>", { silent = true })
	end,
}
