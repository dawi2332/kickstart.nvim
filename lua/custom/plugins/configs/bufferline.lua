local fn = vim.fn
local bufferline = require("bufferline")
vim.opt.mousemoveevent = true
bufferline.setup({
  options = {
    -- separator_style = "sloped",
    -- separator_style = "slope",
    style_preset = {
      bufferline.style_preset.no_italic,
    },
    indicator = {
      -- style = "underline"
      style = "icon"
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = { "close" }
    },
    offsets = {
      {
        filetype = "neo-tree",
        -- text = function()
        --   return fn.fnamemodify(fn.getcwd(), ":t")
        -- end,
        text_align = "center",
        separator = true
      },
      {
        filetype = "NvimTree",
        text = function()
          return fn.fnamemodify(fn.getcwd(), ":t")
        end,
        text_align = "left",
        separator = true,
        highlight = "Directory",
        offset_seperator = true
      }
    },
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(_, _, diagnostics_dict, _)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
            or (e == "warning" and " " or " ")
        s = s .. sym .. n
      end
      return s
    end
  }
})
