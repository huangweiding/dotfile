local status_ok, _ = pcall(require, "hop")
if not status_ok then
  return
end

-- place this in one of your configuration file(s)

vim.keymap.set("n", "<leader><leader>s", ":HopChar2<cr>", {})
