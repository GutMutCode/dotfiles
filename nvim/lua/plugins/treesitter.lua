-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "bash",
      "c",
      "c_sharp",
      "cpp",
      "css",
      "cuda",
      "dockerfile",
      -- "elixir",
      "gitignore",
      "gleam",
      "go",
      "gomod",
      "gosum",
      "gowork",
      "heex",
      "html",
      "ini",
      "java",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "julia",
      "kotlin",
      "luap",
      "markdown",
      "markdown_inline",
      "objc",
      "po",
      "proto",
      "python",
      "query",
      "rust",
      "sql",
      "terraform",
      "toml",
      "typescript",
      "tsx",
      "vimdoc",
      "xml",
      "yaml",
      "zig",
      "make",
      -- add more arguments for adding more treesitter parsers
    })
    opts.ignore_install = { "latex" } -- list of parsers to ignore installing
  end,
}
