return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	keys = {
		{ "\\", ":Neotree reveal right<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true, -- when true, they will just be displayed differently than normal items
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_ignored = false,
			},
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true, -- optional (default: false)
			},
			use_libuv_file_watcher = true,
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
