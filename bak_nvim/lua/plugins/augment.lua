-- if true then return {} end
return {
  "augmentcode/augment.vim",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = assert(opts.mappings)
        local prefix = "<Leader>a"
        maps.n["<C-y>"] = { "<cmd>call augment.Accept()<cr>", desc = "Accept suggestion" }
        -- normal mode
        maps.n[prefix] = { desc = "󰚩 Augment" }
        maps.v[prefix] = { desc = "󰚩 Augment" }
        maps.n[prefix .. "a"] = { "<cmd>Augment chat<cr>", desc = "chat" }
        maps.n[prefix .. "n"] = { "<cmd>Augment chat-new<cr>", desc = "New chat" }
        maps.n[prefix .. "t"] = { "<cmd>Augment chat-toggle<cr>", desc = "Toggle chat" }
        maps.n[prefix .. "s"] = { "<cmd>Augment status<cr>", desc = "Status" }
        -- visual mode
        maps.v[prefix .. "a"] = { "<cmd>Augment chat<cr>", desc = "chat" }
        maps.v[prefix .. "n"] = { "<cmd>Augment chat-new<cr>", desc = "New chat" }
        maps.v[prefix .. "t"] = { "<cmd>Augment chat-toggle<cr>", desc = "Toggle chat" }
        maps.v[prefix .. "s"] = { "<cmd>Augment status<cr>", desc = "Status" }

        local options = assert(opts.options)
        options.g = {
          augment_workspace_folders = {
            "/Users/xxxx/Downloads/fg_origin/FutureGate",
            "~/Downloads/fg_origin/ESP32-CAM(AWS Iot Core Ok)",
            "~/devs/repos/tmp_phx",
          },
        }
      end,
    },
  },
}
