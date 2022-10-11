data "discord_member" "Fallen\ Faith" {
  server_id = data.discord_server.server.id
  user_id   = 479153009360764930
}

resource "discord_member_roles" "Fallen\ Faith" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Fallen\ Faith.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
