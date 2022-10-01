# -----------------------------------------------------------------------------
# Stub for adding a new user-role mapping:
# 
#   resource "discord_member_roles" "<github-username>" {
#     server_id = data.discord_server.server.id
#     user_id   = data.discord_member.<github-username>.id
#     role {
#       role_id = resource.discord_role.<role-name>.id
#     }
#     role {
#       role_id = data.discord_role.<role-name>.id
#     }
#     ...
#   }
#
# -----------------------------------------------------------------------------

resource "discord_member_roles" "arvindpunk" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.arvindpunk.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}
