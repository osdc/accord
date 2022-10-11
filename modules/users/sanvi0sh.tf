data "discord_member" "sanvi0sh" {
  server_id = data.discord_server.server.id
  user_id   = 219439471991586816
}

resource "discord_member_roles" "sanvi0sh" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.sanvi0sh.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}


