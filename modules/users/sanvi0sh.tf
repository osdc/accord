data "discord_member" "sanvi0sh" {
  server_id = data.discord_server.server.id
  user_id   = 1014445301530120192
}

resource "discord_member_roles" "sanvi0sh" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.sanvi0sh.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}


