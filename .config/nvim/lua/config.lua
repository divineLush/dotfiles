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
o.rnu = true
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
  g.neovide_scroll_animation_length = 0.16
  g.neovide_cursor_animation_length = 0.16
  g.neovide_cursor_vfx_mode = 'railgun'
end

-- strip trailing whitespace
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

local function statusline()
    local file_name = " %f"
    local modified = "%m"
    local align_right = "%="
    local gitbranch =" %{get(b:,'gitsigns_head','')}    "
    local linecol = " %l:%c "
    local percentage = "    %p%%"

    return string.format(
        "%s %s %s%s%s%s%s",
        "𒆙A",
        -- " ",
        file_name,
        modified,
        align_right,
        gitbranch,
        linecol,
        percentage
    )
end

o.statusline = statusline()
