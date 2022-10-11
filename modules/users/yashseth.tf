data "discord_member" "yashseth391" {
  server_id = data.discord_server.server.id
  user_id   = 779247996973613056
}

resource "discord_member_roles" "yashseth391" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.yashseth391.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}