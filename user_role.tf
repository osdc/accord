# -----------------------------------------------------------------------------
# Stub for adding a new user-role mapping:
# 
#   resource "discord_member_roles" "<github-username>" {
#     server_id = data.discord_server.server.id
#     user_id   = data.discord_member.<github-username>.id
#     role {
#       role_id = resource.discord_role.<role-name>.id
#     }
#     role {
#       role_id = data.discord_role.<role-name>.id
#     }
#     ...
#   }
#
# -----------------------------------------------------------------------------


resource "discord_member_roles" "aarkimos" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.aarkimos.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}

resource "discord_member_roles" "akshgpt7" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.akshgpt7.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}

resource "discord_member_roles" "arvindpunk" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.arvindpunk.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}

resource "discord_member_roles" "daemon1024" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.daemon1024.id
  role {
    role_id = data.discord_role.sponsor.id
  }
  role {
    role_id = data.discord_role.hacktoberfest.id
  }
}

resource "discord_member_roles" "humancalico" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.humancalico.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}

resource "discord_member_roles" "ishikajn8126" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.ishikajn8126.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}

resource "discord_member_roles" "rexagod" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.rexagod.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}

resource "discord_member_roles" "Shreyas220" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Shreyas220.id
  role {
    role_id = data.discord_role.sponsor.id
  }
}
