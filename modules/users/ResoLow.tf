data "discord_member" "ResoLow" {
  server_id = data.discord_server.server.id
  user_id   = 558163268804280330
}

resource "discord_member_roles" "ResoLow" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.ResoLow.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
