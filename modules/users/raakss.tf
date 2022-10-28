data "discord_member" "rajjo" {
  server_id = data.discord_server.server.id
  user_id   = 1032909021356752907
}

resource "discord_member_roles" "rajjo" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.rajjo.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
