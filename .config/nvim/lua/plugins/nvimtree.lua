require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = 'left',
    adaptive_size = true,
    mappings = {
      list = {
        { key = "h", action = "dir_up" },
        { key = "l", action = "edit" },
      },
    },
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
  filters = {
    dotfiles = true,
  },
})
