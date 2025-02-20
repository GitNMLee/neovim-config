require('mason').setup()

require("lspconfig").clangd.setup({
  -- Other settings here...
  cmd = {
    -- UNCOMMENT ONE OF THE FOLLOWING TWO CLANGD EXECUTABLE PATHS BASED ON OS, THEN UPDATE THE PATH AS SPECIFIED
    "/usr/bin/clangd-12", 
    "--query-driver=/home/leenathan2/grmn/prj/mrn/**/*", 
    "--pch-storage=memory",
    "--clang-tidy",
    "--background-index",
    "--log=verbose",
  },
})
