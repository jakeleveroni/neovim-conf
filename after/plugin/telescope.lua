local builtin = require('telescope.builtin')

-- find file space + ff
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- find git files space + fg
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

-- find string  space + fs
vim.keymap.set('n', '<leader>fs', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.api.nvim_set_keymap(
  "n",
  "<c-n>",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

-- setup telescope with file browser
require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
require("telescope").load_extension "ui-select"
