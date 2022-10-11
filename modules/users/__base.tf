terraform {
  required_providers {
    discord = {
      source  = "Lucky3028/discord"
      version = "1.0.8"
    }
  }
}

variable "DISCORD_SERVER_ID" {
  type        = string
  description = "Discord server ID."
}

data "discord_server" "server" {
  server_id = var.DISCORD_SERVER_ID
}

module "roles" {
  source = "../roles"

  DISCORD_SERVER_ID = var.DISCORD_SERVER_ID
}
