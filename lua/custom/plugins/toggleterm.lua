return {
  'akinsho/toggleterm.nvim',
  version = '*',
  init = function()
    vim.keymap.set({ 'n' }, '<leader>Tv', '<Cmd>:ToggleTerm size=40 direction=vertical<CR>',
      { desc = 'vertical Terminal' })
    vim.keymap.set({ 'n' }, '<leader>Th', '<Cmd>:ToggleTerm direction=horizontal<CR>', { desc = 'horizontal Terminal' })
    vim.keymap.set({ 'n' }, '<leader>Tf', '<Cmd>:ToggleTerm direction=float<CR>', { desc = 'floating Terminal' })
    require('which-key').add {
      { '<leader>T',  group = '[T]erminal' },
      { '<leader>T_', hidden = true },
    }
  end,
  opts = {},
}
