return {
  "tpope/vim-fugitive",
  lazy = false,
  cmd = { "G", "Git" },
  keys = {
    { "<leader>ga", ":Git fetch --all -p<cr>", desc = "Git fetch" },
    { "<leader>gl", "Git pull<cr>",            desc = "Git pull" },
  },
}
