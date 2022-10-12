data "discord_member" "shiv" {
  server_id = data.discord_server.server.id
  user_id   = 998314422055489596
}

resource "discord_member_roles" "shiv" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.shiv.id
  role {
    role_id = module.roles.hactoberfest.id
  }
}
