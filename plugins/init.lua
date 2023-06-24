return {
  {
    "sindrets/diffview.nvim",
    lazy = false,
    requires = "nvim-lua/plenary.nvim",
  },

  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function() require("leap").add_default_mappings() end,
  },

  {
    "nvim-telescope/telescope-media-files.nvim",
    lazy = false,
    config = function() require("telescope").load_extension "media_files" end,
  },
  -- cmake-tools
  {
    "Civitasv/cmake-tools.nvim",
    lazy = false,
    config = function()
      requires = require("cmake-tools").setup {
        cmake_command = "cmake",                                          -- this is used to specify cmake command path
        cmake_regenerate_on_save = true,                                  -- auto generate when save CMakeLists.txt
        cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- this will be passed when invoke `CMakeGenerate`
        cmake_build_options = {},                                         -- this will be passed when invoke `CMakeBuild`
        cmake_build_directory = "",                                       -- this is used to specify generate directory for cmake
        cmake_build_directory_prefix = "cmake_build_",                    -- when cmake_build_directory is set to "", this option will be activated
        cmake_soft_link_compile_commands = true,                          -- this will automatically make a soft link from compile commands file to project root dir
        cmake_compile_commands_from_lsp = false,                          -- this will automatically set compile commands file location using lsp, to use it, please set `cmake_soft_link_compile_commands` to false
        cmake_kits_path = nil,                                            -- this is used to specify global cmake kits path, see CMakeKits for detailed usage
        cmake_variants_message = {
          short = { show = true },                                        -- whether to show short message
          long = { show = true, max_length = 40 },                        -- whether to show long message
        },
        cmake_dap_configuration = {                                       -- debug settings for cmake
          name = "cpp",
          type = "codelldb",
          request = "launch",
          stopOnEntry = false,
          runInTerminal = true,
          console = "integratedTerminal",
        },
        cmake_always_use_terminal = false, -- if true, use terminal for generate, build, clean, install, run, etc, except for debug, else only use terminal for run, use quickfix for others
        cmake_quickfix_opts = {            -- quickfix settings for cmake, quickfix will be used when `cmake_always_use_terminal` is false
          show = "always",                 -- "always", "only_on_error"
          position = "belowright",         -- "bottom", "top"
          size = 10,
        },
        cmake_terminal_opts = {           -- terminal settings for cmake, terminal will be used for run when `cmake_always_use_terminal` is false or true, will be used for all tasks except for debug when `cmake_always_use_terminal` is true
          name = "Main Terminal",
          prefix_name = "[CMakeTools]: ", -- This must be included and must be unique, otherwise the terminals will not work. Do not use a simple spacebar " ", or any generic name
          split_direction = "horizontal", -- "horizontal", "vertical"
          split_size = 11,

          -- Window handling
          single_terminal_per_instance = true,  -- Single viewport, multiple windows
          single_terminal_per_tab = true,       -- Single viewport per tab
          keep_terminal_static_location = true, -- Static location of the viewport if avialable

          -- Running Tasks
          start_insert_in_launch_task = false, -- If you want to enter terminal with :startinsert upon using :CMakeRun
          start_insert_in_other_tasks = false, -- If you want to enter terminal with :startinsert upon launching all other cmake tasks in the terminal. Generally set as false
          focus_on_main_terminal = false,      -- Focus on cmake terminal when cmake task is launched. Only used if cmake_always_use_terminal is true.
          focus_on_launch_terminal = false,    -- Focus on cmake launch terminal when executable target in launched.
        },
      }
    end,
  },
  {
    "kosayoda/nvim-lightbulb",
    lazy = false,
    config = function()
      requires =
          "antoinemadec/FixCursorHold.nvim",
          -- Showing defaults
          require("nvim-lightbulb").setup {
            -- LSP client names to ignore
            -- Example: {"sumneko_lua", "null-ls"}
            ignore = {},
            sign = {
              enabled = true,
              -- Priority of the gutter sign
              priority = 10,
            },
            float = {
              enabled = false,
              -- Text to show in the popup float
              text = "💡",
              -- Available keys for window options:
              -- - height     of floating window
              -- - width      of floating window
              -- - wrap_at    character to wrap at for computing height
              -- - max_width  maximal width of floating window
              -- - max_height maximal height of floating window
              -- - pad_left   number of columns to pad contents at left
              -- - pad_right  number of columns to pad contents at right
              -- - pad_top    number of lines to pad contents at top
              -- - pad_bottom number of lines to pad contents at bottom
              -- - offset_x   x-axis offset of the floating window
              -- - offset_y   y-axis offset of the floating window
              -- - anchor     corner of float to place at the cursor (NW, NE, SW, SE)
              -- - winblend   transparency of the window (0-100)
              win_opts = {},
            },
            virtual_text = {
              enabled = false,
              -- Text to show at virtual text
              text = "💡",
              -- highlight mode to use for virtual text (replace, combine, blend), see :help nvim_buf_set_extmark() for reference
              hl_mode = "replace",
            },
            status_text = {
              enabled = false,
              -- Text to provide when code actions are available
              text = "💡",
              -- Text to provide when no actions are available
              text_unavailable = "",
            },
            autocmd = {
              enabled = false,
              -- see :help autocmd-pattern
              pattern = { "*" },
              -- see :help autocmd-events
              events = { "CursorHold", "CursorHoldI" },
            },
          }
    end,
  },

  {
    "keaising/im-select.nvim",
    lazy = false,
    -- require("im-select").setup {
    --   -- IM will be set to `default_im_select` in `normal` mode
    --   -- For Windows/WSL, default: "1033", aka: English US Keyboard
    --   -- For macOS, default: "com.apple.keylayout.ABC", aka: US
    --   -- For Linux, default: "keyboard-us"
    --   -- You can use `im-select` or `fcitx5-remote -n` to get the IM's name you preferred
    --   default_im_select = "com.apple.keylayout.ABC",
    --   -- Set to 1 if you don't want restore IM status when `InsertEnter`
    --   disable_auto_restore = 0,
    --   -- Can be binary's name or binary's full path,
    --   -- e.g. 'im-select' or '/usr/local/bin/im-select'
    --   -- For Windows/WSL, default: "im-select.exe"
    --   -- For macOS, default: "im-select"
    --   -- For Linux, default: "fcitx5-remote"
    --   default_command = "im-select",
    -- },
  },

  {
    "lambdalisue/suda.vim",
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  {
    "skywind3000/asyncrun.vim",
    lazy = false,
    requires = "skywind3000/asynctasks.vim",
  },

  -- install without yarn or npm
  -- install without yarn or npm
  -- {
  --     "iamcco/markdown-preview.nvim",
  --     cmd = { "MarkdownPreviewToggle" },
  --     ft = { "markdown" }
  --     build = function() vim.fn["mkdp#util#install"]() end,
  -- }
  -- install with yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle" },
    build = { "cd app && yarn install" },
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
}
