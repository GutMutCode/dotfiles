vim.g.translator_target_lang = "ko"
-- vim.g.translator_target_lang = "en"

return {
  "voldikss/vim-translator",
  dependencies = {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = assert(opts.mappings)
      local prefix = "<Leader>t"
      maps.v[prefix] = { desc = "󰊿 Translator" }
      maps.v[prefix .. "t"] = { ":'<,'>TranslateW<CR>", desc = "Translate" }
      maps.v[prefix .. "r"] = { ":'<,'>TranslateR --target_lang=en<CR>", desc = "Translate (replace)" }
    end,
  },
}
