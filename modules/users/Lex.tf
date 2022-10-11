data "discord_member" "lex" {
  server_id = data.discord_server.server.id
  user_id   = 715447302378225666
}

resource "discord_member_roles" "lex" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.lex.id
  role {
    role_id = module.roles.sponsor.id
  }
}
