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

variable "DISCORD_TOKEN" {
  type        = string
  description = "The discord bot token."
}

provider "discord" {
  token = var.DISCORD_TOKEN
}

data "discord_server" "server" {
  server_id = var.DISCORD_SERVER_ID
}
