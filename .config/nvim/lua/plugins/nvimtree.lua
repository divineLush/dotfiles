require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = 'left',
    adaptive_size = true,
  },
  renderer = {
    icons = {
      show = {
        -- file = false,
        -- folder = false,
        folder_arrow = false,
      },
    },
  },
  git = {
    ignore = false,
  },
  -- filters = {
  --   dotfiles = true,
  -- },
})
