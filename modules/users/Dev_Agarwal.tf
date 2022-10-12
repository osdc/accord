data "discord_member" "Dev_Agarwal" {
  server_id = data.discord_server.server.id
  user_id   = 688657744215146546 
}

resource "discord_member_roles" "Dev_Agarwal" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Dev_Agarwal.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
