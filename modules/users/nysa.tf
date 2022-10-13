data "discord_member" "nysaag" {
  server_id = data.discord_server.server.id
  user_id   = 809840181120467014
}

resource "discord_member_roles" "nysaag" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.nysaag.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
