local neogit = require("neogit")

neogit.setup {
  disabe_signs = true,
  disable_commit_confirmation = true,
  disable_insert_on_commit = false,
  kind = 'split',
  commit_popup = {
    kind = 'split',
  },
}
