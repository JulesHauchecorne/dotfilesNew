
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "ignore_case",        -- or "ignore_case" or "respect_case"
    },
    prompt_prefix = '' ,
    bookmarks = {
      -- Available: 'brave', 'google_chrome', 'safari', 'firefox', 'firefox_dev'
      selected_browser = 'brave',

      -- Either provide a shell command to open the URL
    --  url_open_command = 'open',

      -- Or provide the plugin name which is already installed
      -- Available: 'vim_external', 'open_browser'
      url_open_plugin = 'open_browser',
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('dap')
require('telescope').load_extension('bookmarks')
require'telescope'.load_extension('zoxide')

  local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").git_files({
        prompt_title = "< Config Files >",
        cwd = vim.env.config,
        hidden = true,
    })
end

--M.go_fix = function()
--    require("telescope.builtin").lsp_code_actions({
--        layout_config = {
--            width = 0.2
--        }
--    })
--end

return M

