data "discord_member" "FallenFaith" {
  server_id = data.discord_server.server.id
  user_id   = 479153009360764930
}

resource "discord_member_roles" "FallenFaith" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.FallenFaith.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
