data "discord_member" "an2552" {
  server_id = data.discord_server.server.id
  user_id   = 774490741116370944
}

resource "discord_member_roles" "an2552" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.an2552.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
