data "discord_member" "yash seth" {
  server_id = data.discord_server.server.id
  user_id   = 779247996973613056
}

resource "discord_member_roles" "yash seth" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.yash seth.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
