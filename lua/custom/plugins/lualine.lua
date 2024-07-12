return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- require("custom.plugins.configs.evil_lualine")
    -- require("custom.plugins.configs.bubbles")
    -- require("custom.plugins.configs.slanted-gaps")
    require("custom.plugins.configs.themed-slanted-gaps")
    -- require("lualine").setup()
  end
}
