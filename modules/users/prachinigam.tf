data "discord_member" "prachinigam20" {
  server_id = data.discord_server.server.id
  user_id   = 1025843733113086038
}

resource "discord_member_roles" "prachinigam20" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.prachinigam20.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
