-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- langs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.gleam" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.julia" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.zig" },

  --
  { import = "astrocommunity.completion.codeium-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  -- hop: s
  { import = "astrocommunity.motion.hop-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },

  -- recipes
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  -- { import = "astrocommunity.color.transparent-nvim" },
  -- import/override with your plugins folder
}
