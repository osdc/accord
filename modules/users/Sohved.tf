data "discord_member" "SohvedKuks" {
  server_id = data.discord_server.server.id
  user_id   = 325562808169136129
}

resource "discord_member_roles" "SohvedKuks" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.SohvedKuks.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}

