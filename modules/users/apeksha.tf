data "discord_member" "apeksha" {
  server_id = data.discord_server.server.id
  user_id   = 882969522372489347
}

resource "discord_member_roles" "apeksha" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.apeksha.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
