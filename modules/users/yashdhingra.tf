data "discord_member" "yashdhingra" {
  server_id = data.discord_server.server.id
  user_id   = 701044248216338444
}

resource "discord_member_roles" "yashdhingra" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.yashdhingra.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
