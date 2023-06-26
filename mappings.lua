-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    --  --second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    --quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    ["<leader>sS"] = { "<cmd>SudaWrite<cr>", desc = "Save File as root" },
    ["<leader>o"] = { ":SudaRead", desc = "Open File as root" },
    --change description but the same  command
    -- quick quit
    -- ["<C-q>"] = { "<cmd>q<cr>", desc = "Quit" },
    --change description but the same command
    -- ["<C-q>"] = { "<cmd>lua vim.notify(\'mappings demo ,quit!\')<cr>", desc = "Quit" },
    --change description but the same command
    -- telescope utils
    ["<C-e>"] = { "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
    ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", desc = "Find keymaps" },
    ["<leader>fc"] = { "<cmd>Telescope commands<cr>", desc = "Fast command" },
    -- window
    ["<leader>wv"] = { "<cmd>vsplit<cr>", desc = "Split window vertically" },
    ["<leader>wo"] = { "<c-w>o", desc = "Maximize window" },
    ["<leader>wc"] = { "<c-w>c", desc = "Close window" },

    --notify demo
    ["<leader>nn"] = { '<cmd>lua vim.notify("hello notify")<cr>', desc = "lua notify demo" },

    -- aerial
    ["<leader>ss"] = { "<cmd>AerialOpen<cr>", desc = "Open Symbols" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --cmake-tools <Alt+7>,same as clion
    ["<M-7>"] = { "<cmd>CMakeBuild<cr>", desc = "CMake Build" },
    ["<F22>"] = { "<cmd>CMakeRun<cr>", desc = "CMake Run" },

    -- AsyncRun
    ["<leader>rp"] = {
      "<cmd>:copen 7|AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos=TAB  python '$(VIM_FILEPATH)'<cr>",
      desc = "Async run python",
    },
    ["<leader>rr"] = { ":copen 7|AsyncRun ", desc = "Async run " },
    ["<leader>mp"] = { "<cmd>MarkdownPreview<cr>", desc = "MarkdownPreview toggle or stop" },
    ["<C-p>"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "MarkdownPreviewToggle" },

    -- ZenMode

    ["<M-9>"] = { ":ZenMode<cr>", desc = "ZenMode" },
    ["<leader>mz"] = { ":ZenMode<cr>", desc = "ZenMode" },
    --
    -- 以前不好用的配置, 当前版本astronvim 自带了dap, 因此以下配置无效, 仅作为快捷键备注保留
    -- ["<leader>rc"] = { ":copen 7|AsyncRun ", desc = "Async run cpp" },

    -- ["<leader>dr"]{ "<cmd>lua require'dap'.repl.open()<cr>", desc ="dap.repl.open"}

    -- ["<F5>"] = { "<cmd>lua require'dap'.continue()<cr>", desc = "dap.continue" },
    -- S-F9
    -- ["<F21>"] = { "<cmd>lua require'dap'.continue()<cr>", desc = "dap.continue" },
    --
    -- ["<F7>"] = { "<cmd>lua require'dap'.step_into()<cr>", desc = "dap.step_into" },
    -- ["<F8>"] = { "<cmd>lua require'dap'.step_over()<cr>", desc = "dap.step_over" },
    -- ["<F9>"] = { "<cmd>lua require'dap'.run_last()<cr>", desc = "dap.run_last" },
    -- ["<F10>"] = { "<cmd>lua require'user.dap.dap-util'.reload_continue()<CR>", desc = "dap.dap-util" },
    --
    -- -- ["<C-F2>"] = { "<cmd>lua require'dap'.terminate()<cr>", desc = "dap.terminate" },
    -- ["<F26>"] = { "<cmd>lua require'dap'.terminate()<cr>", desc = "dap.terminate" },
    -- -- ["<S-F8>"] = { "<cmd>lua require'dap'.step_out()<cr>", desc = "dap.step_out" },
    -- ["<F20>"] = { "<cmd>lua require'dap'.step_out()<cr>", desc = "dap.step_out" },
    -- -- ["<C-F8>"] = { "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>",
    -- ["<F32>"] = {
    --   "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>",
    --   desc = "dap toggle_breakpoint",
    -- },

    -- ["K"] = { "<cmd>lua require'dapui'.eval()<cr>", desc = "" },
    -- ["<leader>dt"]={ "<cmd>lua require'dapui'.toggle()<cr>" , desc ="'dapui'.toggle()"}
    -- ["<leader>dx"]={ "<cmd>lua require'dap'.terminate()<cr>" , desc ="'dap'.terminate()"}
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
