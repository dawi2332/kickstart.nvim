return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("custom.plugins.configs.bufferline")
  end,
}

-- vim: ts=2 sw=2 et
