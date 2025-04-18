if true then return {} end

return {
  "GutMutCode/learn-lang.nvim",
  config = function() require("learn-lang").setup() end,
}
