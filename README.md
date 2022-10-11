# accord

A delcarative method to manage user role mappings for a Discord server. Roles and role permissions are to be managed via Discord client, but any role-user mappings should only be altered through accord.

---

### Instructions

*NOTE: Before anything, make sure your [Developer Mode](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-) is enabled in your Discord client.*

Adding users:
1. In `/modules/users/`, create a file `<github-username.tf>`
2. Add a `data` source of type `discord_member` with YOUR discord user ID. (right click on your name in discord, there will be an option to `Copy ID`)
3. Add a `resource` of type `discord_member_roles` and map your user with the role(s) you want

Adding roles:
1. In `/modules/roles/`, add a role in `roles.tf` (this role has to exist in the discord server!)
2. Define a module output in `__base.tf` for the newly added role

### Environment Variables

```
TF_VAR_DISCORD_SERVER_ID
TF_VAR_DISCORD_TOKEN
```

### Deployment
// TODO (via GitHub Actions)

1. on commit, plan