return {
  "andythigpen/nvim-coverage",
  version = "*",
  cmd = { "Coverage", "CoverageLoad", "CoverageToggle", "CoverageSummary" },
  config = function()
    require("coverage").setup({
      auto_reload = true,
    })
  end,
}
