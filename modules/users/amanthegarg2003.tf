data "discord_member" "amanthegarg2003" {
  server_id = data.discord_server.server.id
  user_id   = 926910043188777000  
}

resource "discord_member_roles" "amanthegarg2003" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.amanthegarg2003.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
