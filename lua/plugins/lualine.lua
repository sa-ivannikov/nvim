local function relfp()
	return vim.fn.expand("%")
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_c = { relfp },
			},
		})
	end,
}
