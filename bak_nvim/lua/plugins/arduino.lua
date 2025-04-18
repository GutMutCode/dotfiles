if true then return {} end
return {
  "glebzlat/arduino-nvim",
  config = {
    default_fqbn = "arduino:esp32", -- Adjust for your board
    -- arduino = "/path/to/arduino-cli", -- If not in PATH
    -- clangd = "/path/to/clangd", -- If not in PATH
  },
}
