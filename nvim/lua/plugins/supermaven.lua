-- if true then return {} end
return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup {
      keymaps = {
        accept_suggestion = "<C-f>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
    }
  end,
}