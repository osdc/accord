data "discord_member" "Keshav Oberoi" {
  server_id = data.discord_server.server.id
  user_id   =887722868979417131 
}

resource "discord_member_roles" "Keshav Oberoi" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.887722868979417131.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
