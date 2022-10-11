data "discord_member" "vkayyy" {
  server_id = data.discord_server.server.id
  user_id   = 758342351528919081
}

resource "discord_member_roles" "vkayyy" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.vkayyy.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
