local status_ok, _ = pcall(require, "telescope")
  if not status_ok then
    return
  end

local builtin = require("telescope.builtin")

vim.keymap.set('n', "<leader>sf", builtin.find_files, {})
vim.keymap.set('n', "<leader>sb", builtin.buffers, {})
vim.keymap.set('n', "<leader>/", builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', "<leader>ss", builtin.live_grep, {})
