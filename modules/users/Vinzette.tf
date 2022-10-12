data "discord_member" "Vinzette" {
  server_id = data.discord_server.server.id
  user_id   = 436542409355296769
}

resource "discord_member_roles" "Vinzette" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Vinzette.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
