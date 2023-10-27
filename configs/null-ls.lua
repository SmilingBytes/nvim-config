local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- Code Actions
  b.code_actions.gitsigns,

  -- Completion
  b.completion.spell,
  b.completion.tags,

  -- Diagnostics
  b.diagnostics.ruff,
  b.diagnostics.codespell,
  b.diagnostics.luacheck.with { extra_args = { "--global vim" } },
  b.diagnostics.curlylint,
  b.diagnostics.gitlint,
  b.diagnostics.typos,
  b.diagnostics.write_good,
  -- b.diagnostics.pylint,

  -- Formatting
  b.formatting.ruff,
  b.formatting.codespell,
  b.formatting.fixjson,
  b.formatting.yamlfmt,
  b.formatting.stylua,
  b.formatting.blackd,

  -- hovers
  b.hover.dictionary,

}

null_ls.setup {
  debug = true,
  sources = sources,
}
