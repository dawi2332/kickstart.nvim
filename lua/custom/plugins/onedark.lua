return {
  -- Theme inspired by Atom
  'navarasu/onedark.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    require('onedark').load()
  end,
  enabled = true,
}
