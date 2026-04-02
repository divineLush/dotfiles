-- global options
local o = vim.opt
o.swapfile = false
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = false
o.ignorecase = true
o.lazyredraw = true
o.termguicolors = true
o.showmatch = true
o.scrolloff = 6
o.mouse = 'a'
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.smartindent = false
o.copyindent = true
o.title = true
o.fileformat = 'unix'
o.clipboard = 'unnamedplus'
o.number = true
o.guifont = { "Fira Code", ":h12"}

-- window-local options
local wo = vim.wo
wo.wrap = true
wo.foldenable = false
wo.cursorline = true

vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')

local g = vim.g
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

if g.neovide then
  g.neovide_scroll_animation_length = 0.1
  g.neovide_cursor_animation_length = 0
  g.neovide_scale_factor = 1.0
end

-- strip trailing whitespace
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- automatic formatting via gofmt
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

function statusline()
    local file_name = "%<%f"
    local modified = " %m%r"
    local align_right = "%="
    local gitbranch = "    "
    local linecol = " %l:%c"

    if vim.g.loaded_gitsigns then
        local status = vim.b.gitsigns_status_dict
        if status and status.head then
            gitbranch = status.head .. "    "
        end
    end

    return table.concat({
        " ",
        " ",
        file_name,
        modified,
        align_right,
        gitbranch,
        linecol,
        " "
    })
end

vim.o.statusline = "%!v:lua.statusline()"
