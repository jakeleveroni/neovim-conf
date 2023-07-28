function BG(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	-- uncomment if you want transparent bg
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

BG()
