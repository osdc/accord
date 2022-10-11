data "discord_member" "I-r0k" {
  server_id = data.discord_server.server.id
  user_id   = 760016973593051136
}

resource "discord_member_roles" "I-r0k" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.DrQuark.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
