-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  init = function()
    vim.keymap.set("n", "<C-n>", "<cmd> Neotree toggle <CR>", { desc = "Toggle neo-tree", })
    vim.keymap.set("n", "<leader>e", "<cmd> Neotree focus <CR>", { desc = "Focus neo-tree", })
  end,
  opts = function()
    return require("custom.plugins.configs.neotree")
  end,
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
  enabled = false
}
