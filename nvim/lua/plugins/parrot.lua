-- if true then return {} end
return {
  "frankroeder/parrot.nvim",
  dependencies = {
    "ibhagwan/fzf-lua",
    "nvim-lua/plenary.nvim",
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = assert(opts.mappings)
        local prefix = "<Leader>r"
        maps.n[prefix] = { desc = " Parrot" }
        maps.v[prefix] = { desc = " Parrot" }
        maps.n[prefix .. "a"] = { "<cmd>PrtAsk<cr>", desc = "Parrot ask" }
        maps.n[prefix .. "n"] = { "<cmd>PrtChatNew<cr>", desc = "New chat" }
        maps.n[prefix .. "i"] = { "<cmd>PrtInfo<cr>", desc = "Info" }
        maps.n[prefix .. "t"] = { "<cmd>PrtChatToggle<cr>", desc = "Toggle chat" }
        maps.n[prefix .. "f"] = { "<cmd>PrtChatFinder<cr>", desc = "Find chat" }
        maps.n[prefix .. "d"] = { "<cmd>PrtChatDelete<cr>", desc = "Delete chat" }
        maps.n[prefix .. "p"] = { "<cmd>PrtProvider<cr>", desc = "Select Provider" }
        maps.n[prefix .. "m"] = { "<cmd>PrtModel<cr>", desc = "Select Model" }
        -- visual mode
        maps.v[prefix .. "a"] = { "<cmd>PrtAsk<cr>", desc = "Parrot ask" }
        maps.v[prefix .. "n"] = { "<cmd>PrtChatNew<cr>", desc = "New chat" }
        maps.v[prefix .. "i"] = { "<cmd>PrtInfo<cr>", desc = "Info" }
        maps.v[prefix .. "t"] = { "<cmd>PrtChatToggle<cr>", desc = "Toggle chat" }
        maps.v[prefix .. "f"] = { "<cmd>PrtChatFinder<cr>", desc = "Find chat" }
        maps.v[prefix .. "p"] = { "<cmd>PrtProvider<cr>", desc = "Select Provider" }
        maps.v[prefix .. "m"] = { "<cmd>PrtModel<cr>", desc = "Select Model" }
        maps.v[prefix .. "y"] = { ":'<,'>PrtChatPaste<cr>", desc = "Paste chat" }
        maps.v[prefix .. "i"] = { ":'<,'>PrtImplement<cr>", desc = "Implement selected text" }
        maps.v[prefix .. "r"] = { ":'<,'>PrtRewrite<cr>", desc = "Rewrite selected text" }
        maps.v[prefix .. "a"] = { ":'<,'>PrtAppend<cr>", desc = "Append selected text" }
        maps.v[prefix .. "p"] = { ":'<,'>PrtPrepend<cr>", desc = "Prepend selected text" }
        maps.v[prefix .. "t"] = { ":'<,'>PrtRetry<cr>", desc = "Retry prompt" }
      end,
    },
  },
  -- optionally include "rcarriga/nvim-notify" for beautiful notifications
  config = function()
    require("parrot").setup {
      -- Providers must be explicitly added to make them available.
      providers = {
        anthropic = {
          api_key = os.getenv "ANTHROPIC_API_KEY",
        },
        -- gemini = {
        --   api_key = os.getenv "GEMINI_API_KEY",
        -- },
        groq = {
          api_key = os.getenv "GROQ_API_KEY",
          -- topic = {
          --   model = "llama-3.2-11b-text-preview",
          -- },
        },
        -- mistral = {
        --   api_key = os.getenv "MISTRAL_API_KEY",
        -- },
        pplx = {
          api_key = os.getenv "PERPLEXITY_API_KEY",
        },
        -- provide an empty list to make provider available (no API key required)
        ollama = {},
        -- openai = {
        --   api_key = os.getenv "OPENAI_API_KEY",
        -- },
        -- github = {
        --   api_key = os.getenv "GITHUB_TOKEN",
        -- },
        -- nvidia = {
        --   api_key = os.getenv "NVIDIA_API_KEY",
        -- },
        xai = {
          api_key = os.getenv "XAI_API_KEY",
        },
      },
    }
  end,
}
