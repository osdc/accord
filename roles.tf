# -----------------------------------------------------------------------------
# Stub for adding a new role:
# 
# data "discord_member" "<role-name-id>" {
#   server_id = data.discord_server.server.id
#   role_id = <discord-role-id>
# }
#
# -----------------------------------------------------------------------------

data "discord_role" "sponsor" {
  server_id = data.discord_server.server.id
  role_id   = 883789673426731078
}
