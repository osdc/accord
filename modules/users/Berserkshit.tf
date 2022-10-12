data "discord_member" "Monkey7" {
  server_id = data.discord_server.server.id
  user_id   = 1022357593538179082
}

resource "discord_member_roles" "Monkey7" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Monkey 7.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
