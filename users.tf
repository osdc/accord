# -----------------------------------------------------------------------------
# Stub for adding a new user:
# 
# data "discord_member" "<github-username>" {
#   server_id = data.discord_server.server.id
#   user_id = <discord-user-id>
# }
#
# -----------------------------------------------------------------------------


data "discord_member" "arvindpunk" {
  server_id = data.discord_server.server.id
  user_id   = 219439471991586816
}
