data "discord_member" "Prachi Nigam" {
  server_id = data.discord_server.server.id
  user_id   = 1025843733113086038
}

resource "discord_member_roles" "Prachi Nigam" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Prachi Nigam.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
