data "discord_member" "DrQuark" {
  server_id = data.discord_server.server.id
  user_id   = 851462501342380102
}

resource "discord_member_roles" "DrQuark" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.DrQuark.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
