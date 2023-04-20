local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,                                                                              -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "scss", "svelte", "json" } }, -- so prettier works only on these filetypes
  b.formatting.prismaFmt,
  b.formatting.rustywind,
  b.formatting.sqlfluff.with({
    extra_args = { "--dialect", "mysql" }, -- change to your dialect
  }),

  -- Lua
  b.formatting.stylua,
  b.formatting.black,
  b.formatting.csharpier,
  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
