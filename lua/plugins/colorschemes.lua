return {
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd.colorscheme("kanagawa")
		end,
		lazy = false,
		priority = 999,
	},
	-- {
	-- 	"projekt0n/github-nvim-theme",
	-- 	config = function()
	-- 		require("github-theme").setup()
	-- 		vim.cmd.colorscheme("github_light")
	-- 	end,
	-- 	lazy = false,
	-- 	priority = 999,
	-- },
}
