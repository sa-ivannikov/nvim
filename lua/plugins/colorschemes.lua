return {
	{
		"rebelot/kanagawa.nvim",
		config = function()
			-- vim.cmd.colorscheme("kanagawa")
		end,
		lazy = false,
		priority = 999,
	},
	{
		"junegunn/seoul256.vim",
	},
	{
		"projekt0n/github-nvim-theme",
		config = function()
			require("github-theme").setup()
			vim.cmd.colorscheme("github_light")
		end,
	},
}
