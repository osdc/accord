data "discord_member" "PT" {
  server_id = data.discord_server.server.id
  user_id   = 1024388566870151250
}

resource "discord_member_roles" "PT" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.PT.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
