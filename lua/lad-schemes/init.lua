M = {}

M.colorscheme = function(scheme)
	vim.cmd("hi clear")
	vim.cmd("set t_Co=256")
	vim.o.termguicolors = true
	vim.g.colors_name = "lad-schemes"
  vim.g.lad_schemes_theme = scheme

	-- set highlights
	local highlights = require("lad-schemes.highlights").get_highlights(scheme)
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end
end

M.setup = function(opts)
	if opts then
		local scheme = opts.scheme

		M.colorscheme(scheme)
	end

	-- vim.api.nvim_command("colorscheme lad-schemes")
end

return M
