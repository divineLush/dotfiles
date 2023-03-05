local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = { preview_width = 0.5 },
      height = 0.85,
      width = 0.85,
      preview_cutoff = 0,
    },
    file_ignore_patterns = { "node_modules", ".git", ".vscode" },
    path_display = { truncate = 1 },
    set_env = { ["COLORTERM"] = "truecolor" },
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<Tab>"] = actions.move_selection_next,
        ["<S-Tab>"] = actions.move_selection_previous,
        ["<C-z>"] = actions.toggle_selection,
        ["<M-a>"] = actions.toggle_all,
        ["<C-Down>"] = actions.cycle_history_next,
        ["<C-Up>"] = actions.cycle_history_prev,
      },
      n = {
        ["<C-z>"] = actions.toggle_selection,
        ["<M-a>"] = actions.toggle_all,
        ["<C-Down>"] = actions.cycle_history_next,
        ["<C-Up>"] = actions.cycle_history_prev,
      },
    },
  },
  pickers = {
    find_files = {
      follow = true,
    },
    buffers = {
      sort_mru = true,
    },
  },
})
