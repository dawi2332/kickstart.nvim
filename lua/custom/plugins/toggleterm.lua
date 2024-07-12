return {
  'akinsho/toggleterm.nvim',
  version = "*",
  init = function()
    vim.keymap.set({ 'n' }, "<leader>Tv", "<Cmd>:ToggleTerm size=40 direction=vertical<CR>",
      { desc = "vertical Terminal" })
    vim.keymap.set({ 'n' }, "<leader>Th", "<Cmd>:ToggleTerm direction=horizontal<CR>",
      { desc = "horizontal Terminal" })
    vim.keymap.set({ 'n' }, "<leader>Tf", "<Cmd>:ToggleTerm direction=float<CR>", { desc = "floating Terminal" })
    require('which-key').register {
      ['<leader>T'] = { name = '[T]erminal', _ = 'which_key_ignore' },
    }
  end,
  opts = { --[[ things you want to change go here]] },
}
