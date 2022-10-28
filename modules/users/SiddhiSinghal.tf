data "discord_member" "DrQuark" {
  server_id = data.discord_server.server.id
  user_id   = 1029377962086248468
}

resource "discord_member_roles" "Siddhi" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Siddhi.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
