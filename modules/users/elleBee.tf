data "discord_member" "elleBee" {
  server_id = data.discord_server.server.id
  user_id   = 950731037246373939
}

resource "discord_member_roles" "elleBee" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.elleBee.id
  role {
    role_id = module.roles.sponsor.id
  }
}
