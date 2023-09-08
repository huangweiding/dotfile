local status_ok, treesitter = pcall(require, "nvim-treesitter.config")
if not status_ok then
  return
end

treesitter.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "json" },
  auto_install = true,

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  highlight = {
    enable = true,
    disable = {""},
    additional_vim_regex_highlighting = true
  },
  indent = {enable = false, disable = {"yaml"}},
}
