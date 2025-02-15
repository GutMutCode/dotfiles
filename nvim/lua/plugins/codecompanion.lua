-- if true then return {} end

return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
    "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
    { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = assert(opts.mappings)
        local prefix = "<Leader>a"

        maps.n[prefix] = { desc = "󰚩 CodeCompanion" }
        maps.n[prefix .. "c"] = { function() require("codecompanion").toggle() end, desc = "CodeCompanion toggle" }
      end,
    },
  },
  config = function()
    require("codecompanion").setup {
      strategies = {
        chat = {
          adapter = "gemini",
        },
        inline = {
          adapter = "gemini",
        },
      },
      adapters = {
        gemini = function()
          return require("codecompanion.adapters").extend("gemini", {
            schema = {
              model = {
                default = "gemini-2.0-flash-exp",
                choices = {
                  "gemini-2.0-flash-exp",
                  "gemini-1.5-flash",
                  "gemini-1.5-pro",
                  "gemini-1.0-pro",
                },
              },
            },
          })
        end,
      },
    }
  end,
}
