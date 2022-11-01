--require('telescope-config')
vim.g.mapleader = " "
local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true }
local opts = { noremap = true, silent = true }
-- yank to clipboard and yank all file
vim.cmd('nnoremap <leader>y "+y')
vim.cmd('vnoremap <leader>y "+y')
vim.cmd('nnoremap <leader>Y gg"+yG')
-- Who would ever reach so far as Esc...
keymap('i', 'jj' , '<Esc>', {} )
keymap('i', 'kk' , '<Esc>', {} )
-- sane window bindings
keymap('n', '<leader>h', ':wincmd h<CR>', opts )
keymap('n', '<leader>l', ':wincmd l<CR>', opts )
keymap('n', '<leader>k', ':wincmd k<CR>', opts )
keymap('n', '<leader>j', ':wincmd j<CR>', opts )
keymap('n', '<leader>+' , ':vertical resize +5<CR>', opts)
keymap('n', '<leader>-' , ':vertical resize -5<CR>', opts)
-- Nvim
keymap('n', '<leader>pv', ':NvimTreeFindFile<Enter><CR>', opts)
keymap('n', '<leader>po', ':NvimTreeOpen<Enter><CR>', opts)
-- Telescope stuff <3
keymap('n', 'tt', ':Telescope<CR>', opts)
vim.cmd("nnoremap <leader><leader> <cmd>lua require('telescope.builtin').find_files( )<cr>")
vim.cmd("nnoremap <leader>tg <cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.cmd("nnoremap <leader>fw :Telescope grep_string<CR>")
keymap('n', 'gr', "<cmd>lua require('telescope.builtin').lsp_references()<cr>", opts)
keymap('n', 'gi', "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>", opts)
keymap('n', '<leader>fv' ,"<cmd>lua require('telescope.builtin').oldfiles()<cr>", opts )
keymap('n', '<leader>/' , "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opts)
keymap('n', '<leader>c', "<cmd> lua require('telescope-config.init').search_dotfiles( )<CR>" , opts)
keymap('n',  'gf',  "<cmd> lua require('telescope.builtin').lsp_code_actions( { layout_strategy = 'cursor',  layout_config = { cursor = { width = 0.4, height = 0.2 }} })<CR>", opts)
keymap('n', '<leader>;', "<cmd>lua require('telescope.builtin').commands(require('telescope.themes').get_dropdown({}) )<cr>", opts)
keymap('n', '<leader>:', "<cmd>lua require('telescope.builtin').command_history(require('telescope.themes').get_dropdown({}) )<cr>", opts)
keymap('n', '<leader>erw', "<cmd>lua require('telescope.builtin').diagnostics()<cr>", opts)
keymap('n', '<leader>erd', "<cmd>lua require('telescope.builtin').diagnostics( { bufnr=0 } )<cr>", opts)
keymap('n', '<leader>fb' ,  "<cmd>lua require('telescope.builtin').buffers( {layout_config = { height = 0.4 } })<CR>" , opts )
keymap('n', '<leader>fs' ,  "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>" , opts )
keymap('n',  '<leader>B' , "<cmd>lua require('telescope').extensions.bookmarks.bookmarks()<CR>",opts )
keymap('n', '<leader>z', "<cmd>lua require'telescope'.extensions.zoxide.list{}<CR>", opts)
--keymap ( 'n', 'gf',  "<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>", opts)
-- Cant drop fzf or Rg yet <_<
keymap('n', '<leader>fzf', ":FZF --reverse<CR>", opts)
keymap('n', '<leader>rg', ':Rg <space><CR>', opt)
-- laziness++
keymap('n', '<leader>x', ':wqa<CR>', opts)
keymap('n', '<leader>q', ':q<CR>', opts)
---- Cheat.sh
--keymap('n', '<leader>C', ':Cheat<CR>', opt)
-- eazy get rid of highlight
keymap('n', '//', ':noh<CR>', opt)
-- Lsp builtin stuff
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover({ border = "single" })<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap('n', '<leader>nn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--keymap('n', 'gf', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- show error in wrap
keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float({ border = "single" })<CR>', opts)
-- show git blame per line
keymap('n', '<leader>gb',  ":ToggleBlameLine<CR>", opts)
-- ez indent
--vim.cmd("nnoremap <leader>ff gg=G''")
keymap('n' , '<leader>ff', "<cmd>lua vim.lsp.buf.formatting()<CR>" , opts)
----java go fix
----keymap('n', '<leader>gf', "<cmd>lua require('jdtls').code_action()<cr>", opts)
---- Floating terminal
keymap('n', 'T', "<cmd> lua require('FTerm').open()<CR>", opts)
---- Markdown preview
keymap('n' , '<leader>md' , ':MarkdownPreview<CR>' , opts)
---- emmet leader key pour le html completion
vim.cmd("let g:user_emmet_leader_key=',' ")
---- Dab debbuger
--keymap('n', '<leader>dd', "<cmd> lua require('dapui').toggle()<CR>", opts)
--keymap('n', '<leader>dq', "<cmd> lua require('dap').terminate()<CR>", opts)
--vim.cmd("nnoremap <silent> <leader>dc :lua require'dap'.continue()<CR>" )
--vim.cmd("nnoremap <silent> <leader>so :lua require'dap'.step_over()<CR>")
--vim.cmd("nnoremap <silent> <leader>si :lua require'dap'.step_into()<CR>")
--vim.cmd("nnoremap <silent> <leader>ss :lua require'dap'.step_out()<CR>")
--vim.cmd("nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>")
---- vim.cmd("nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
--vim.cmd("nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
--vim.cmd("nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>")
--vim.cmd("nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>")
--vim.cmd("nnoremap <leader>de <Cmd>lua require('dapui').eval()<CR>")
--keymap('n', '<leader>dv', "<cmd>lua require'telescope'.extensions.dap.variables{}<CR>", opts)
--keymap('n', '<leader>dfb', "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>", opts)
--keymap('n', '<leader>dx', "<cmd>lua require'telescope'.extensions.dap.commands{}<CR>", opts)
---- vim-test and ultest to run test methods
--keymap('n', '<leader>rtf', ":Ultest<CR>", opts)
--keymap('n', '<leader>rt', ":UltestNearest<CR>", opts)
--keymap('n', '<leader>rts', ":UltestSummary<CR>", opts)
---- run partial code wiht sniprun
--keymap('n', '<leader>sc', ":SnipClose<CR>", opts)
--keymap('n', '<leader>sr', "<cmd> lua require'sniprun'.run()<CR>", opts)
--keymap('v', '<C-r>', ":SnipRun<CR>", opts)
---- macro usage
--keymap('n', 'gq', 'qa' , opts)
--keymap('n', '..', '@a', opts)
--
--
--
