return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- Override configs
  


  -- Custom plugins
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "lervag/vimtex",
    ft = {"tex", "markdown"},
    init = function ()
      vim.g.vimtex_quickfix_ignore_filters = {
        "^.*Overfull \\hbox.*$",
      }
      -- vim.g.vimtex_quickfix_method = "pplatex"
      vim.g.vimtex_syntax_enabled = 0
      vim.g.vimtex_quickfix_autoclose_after_keystrokes = 1
    end
  },
  {
    "kdheepak/cmp-latex-symbols",
    ft = {"julia"},
    options = {
      strategy = 1 --julia 
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "aznhe21/actions-preview.nvim",
    event = "VeryLazy",
    config = function()
      -- code    
      require("actions-preview").setup {
          telescope = {
            sorting_strategy = "ascending",
            layout_strategy = "vertical",
            layout_config = {
              width = 0.8,
              height = 0.9,
              prompt_position = "top",
              preview_cutoff = 20,
              preview_height = function(_, _, max_lines)
                return max_lines - 15
              end,
            },
        }
      }
    end
  },
  {
    "jhofscheier/ltex-utils.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "nvim-telescope/telescope.nvim",
        -- "nvim-telescope/telescope-fzf-native.nvim", -- optional
    },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
},
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
