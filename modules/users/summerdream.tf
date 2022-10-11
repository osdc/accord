data "discord_member" "summerdream" {
  server_id = data.discord_server.server.id
  user_id   = 858741886049976381
}

resource "discord_member_roles" "summerdream" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.summerdream.id
  role {
    role_id = module.roles.hacktoberfest.id
 }
}
