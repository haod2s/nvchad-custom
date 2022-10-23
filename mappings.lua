local M = {}

M.general = {
  n = {
	["<F2>"] = { "<cmd> SymbolsOutline <CR>", "show outline" },
	["<leader><C-`>"] = { "<cmd> windo lcl|ccl <CR>", "close location/quickfix"},
  },
  v = {
	["<C-c>"] = { '"+y', "copy v line" },
	["J"] = { ":move '>+1<CR>gv-gv", "move selected v line down" },
	["K"] = { ":move '<-2<CR>gv-gv", "move selected v line up" },
  }
}

M.nvimtree = {
  n = {
	["<F3>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  }
}

M.telescope = {
  n = {
	["<C-p>"] = { "<cmd> Telescope find_files <CR>", "find files" },
	["<C-f>"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
  }
}

M.nvterm = {
  n = {
	["<C-`>"] = {
	  function()
	    require("nvterm.terminal").toggle "horizontal"
	  end,
	  "toggle horizontal term",
	},
  },

  t = {
	["<C-`>"] = {
	  function()
	    require("nvterm.terminal").toggle "horizontal"
	  end,
	  "toggle horizontal term",
	},
  }
}

M.hop = {
  n = {
	["ww"] = { "<cmd> HopWord <CR>", "motion" }
  }
}

M.tabufline = {
  n = {
	["<leader>X"] = {
	  function()
	    require("nvchad_ui.tabufline").closeAllBufs()
	  end,
	  "close all buffer",
	},
  }
}

return M