local vim = vim

function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true, noremap = true })
end
