data "discord_member" "arvindpunk" {
  server_id = data.discord_server.server.id
  user_id   = 219439471991586816
}

resource "discord_member_roles" "arvindpunk" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.arvindpunk.id
  role {
    role_id = module.roles.sponsor.id
  }
}
