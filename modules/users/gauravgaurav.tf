data "discord_member" "gauravgaurav" {
  server_id = data.discord_server.server.id
  user_id   = 1029367339403198474
}

resource "discord_member_roles" "gauravgaurav" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.gauravgaurav.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
