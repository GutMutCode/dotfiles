-- see https://github.com/MeanderingProgrammer/render-markdown.nvim/wiki
-- if true then return {} end
return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown", "codecompanion", "quarto" },
  config = function()
    require("render-markdown").setup {
      render_modes = { "n", "c", "t" },
    }
  end,
}
