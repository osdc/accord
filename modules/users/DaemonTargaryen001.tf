data "discord_member" "DaemonTargaryen001" {
  server_id = data.discord_server.server.id
  user_id   = 838316182611689512
}

resource "discord_member_roles" "DaemonTargaryen001" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.DaemonTargaryen001.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
