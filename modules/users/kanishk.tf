data "discord_member" "kanishk" {
  server_id = data.discord_server.server.id
  user_id   = 720268553198239774
}

resource "discord_member_roles" "kanishk" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.kanishk.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
