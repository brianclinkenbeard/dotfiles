local o = vim.opt
local api = vim.api

o.number = true

o.ignorecase = true
o.smartcase = true

o.undofile = true

o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2

-- LIST / LISTCHARS --
o.list = true
o.listchars:append { lead = "·" }

-- indent guides based on effective shiftwidth
local function set_indent()
  local sw = vim.fn.shiftwidth()
  local lms = "▏" .. string.rep(" ", sw - 1)
  o.listchars:append { leadmultispace = lms }
end
api.nvim_create_autocmd({ "OptionSet", "FileType" }, {
  pattern = { "tabstop", "*" },
  callback = set_indent
})
set_indent()

-- don't show trail in insert mode
api.nvim_create_autocmd("InsertEnter", {
  callback = function() o.listchars:remove("trail") end
})
api.nvim_create_autocmd("InsertLeave", {
  callback = function() o.listchars:append({ trail = '-' }) end
})

-- PLUGINS --
vim.pack.add({ 'https://github.com/rebelot/kanagawa.nvim' })
vim.cmd("colorscheme kanagawa")
