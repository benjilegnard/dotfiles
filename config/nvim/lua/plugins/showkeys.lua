-- display keys for streaming
return {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  opts = {
    position = "top-center",
    excluded_modes = { "i" },
    show_count = true,
    timeout = 1,
    maxkeys = 5,
  },
}
