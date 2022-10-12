data "discord_member" "Guillotine189" {
  server_id = data.discord_server.server.id
  user_id   = 858395536386293761
}

resource "discord_member_roles" "Guillotine189" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Guillotine189.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
