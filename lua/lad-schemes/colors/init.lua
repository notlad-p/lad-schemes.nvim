local M = {}

M.get_scheme = function(color_scheme)
	local path = "lad-schemes.colors." .. color_scheme

	local ok, scheme = pcall(require, path)

	if ok then
		return scheme
		-- else
		-- 	error("lad-schemes.nvim: Theme doesn't exist.")
	end
end

return M
