"data "discord_member" "Apple Pie" {
  server_id = data.discord_server.server.id
  user_id   = 713273948489515020
}

resource "discord_member_roles" "Apple Pie" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Apple Pie.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
