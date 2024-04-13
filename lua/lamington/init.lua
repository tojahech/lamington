local M = {}

M.load = function()
	-- Reset colors
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	-- Specify colorscheme
	vim.g.colors_name = "lamington"

	-- Set highlight groups
	local groups = require("lamington.highlights")
	for group, highlight in pairs(groups) do
		vim.api.nvim_set_hl(0, group, highlight)
	end
end

return M
