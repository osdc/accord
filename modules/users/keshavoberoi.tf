data "discord_member" "keshavoberoi" {
  server_id = data.discord_server.server.id
  user_id   = 887722868979417131 
}

resource "discord_member_roles" "keshavoberoi" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.keshavoberoi.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}