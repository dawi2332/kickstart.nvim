return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    vim.keymap.set('n', "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })
    vim.keymap.set('n', "<leader>nl", "<cmd>Noice last<CR>", { desc = "Last Noice Message" })
    vim.keymap.set('n', "<leader>nt", "<cmd>Telescope noice<CR>", { desc = "Noice Telesope" })
    require("telescope").load_extension("noice")
    require('which-key').register {
      ['<leader>n'] = { name = '[N]oice', _ = 'which_key_ignore' },
    }
    require("noice").setup({
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true,         -- use a classic bottom cmdline for search
        command_palette = true,       -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,           -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false,       -- add a border to hover docs and signature help
      },
      views = {
        cmdline_popup = {
          border = {
            style = "none",
            padding = { 2, 3 },
          },
          filter_options = {},
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
      ---@type NoiceRouteConfig[]
      routes = {
        -- {
        --   view = "split",
        --   filter = { event = "msg_show", min_height = 20 },
        -- },
        {
          filter = {
            event = "notify",

            find = "Config Change Detected. Reloading"
          },
          view = "mini"
        },
        ---@diagnostic disable-next-line: missing-fields
        {
          filter = {
            event = "msg_show",
            find = "more lines"
          },
          opts = {
            skip = true
          }
        },
        ---@diagnostic disable-next-line: missing-fields
        {
          filter = {
            event = "msg_show",
            find = "yanked"
          },
          opts = {
            skip = true
          }
        },
        ---@diagnostic disable-next-line: missing-fields
        {
          filter = {
            event = "msg_show",
            find = "fewer lines"
          },
          opts = {
            skip = true
          }
        },
        ---@diagnostic disable-next-line: missing-fields
        {
          filter = {
            event = "msg_show",
            find = "Zeilen mehr"
          },
          opts = {
            skip = true
          }
        },
        {
          view = "mini",
          filter = { event = "msg_show", kind = "" }
        },
      },
    })
  end
}
