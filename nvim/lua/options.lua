vim.cmd('let $nvim = "/home/jules/.config/nvim/"')
vim.cmd('filetype plugin indent on')
vim.env.config = "/home/jules/.config/"
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.relativenumber = true
vim.o.number = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.wrap = false
vim.o.smartcase = true
vim.o.swapfile = false
vim.nobackup = true
vim.o.undofile = true
vim.o.errorbells = false
vim.o.termguicolors = true
vim.o.incsearch = true
vim.o.scrolloff = 8
vim.o.updatetime = 50
vim.o.signcolumn = "yes"
--vim.cmd( 'syntax on')
vim.cmd('colorscheme  gruvbox')
--vim.cmd('colorscheme  nord')
--vim.cmd('colorscheme  monokai')
vim.cmd('hi statusline guibg=NONE gui=NONE')
vim.cmd('hi statusline ctermbg=NONE cterm=NONE')
vim.cmd('hi Pmenu guibg=NONE gui=NONE')
vim.cmd('hi normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight clear NormalFloat')
vim.cmd('highlight clear LineNr')
vim.cmd('highlight clear SignColumn')
vim.cmd("let g:mkdp_filetypes = ['markdown', 'plantuml']")
vim.cmd("let test#strategy = 'neovim'")
--vim.cmd("let test#python#pytest#options = '--color=yes'")
vim.o.wildmenu = true
--vim.cmd("let g:python3_host_prog = $HOME . '/.local/venv/nvim/bin/python3' ")
vim.cmd("let g:ultest_deprecation_notice=0")


