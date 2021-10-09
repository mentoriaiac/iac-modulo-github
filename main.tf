provider "github" {
  owner = var.organization
}

data "github_team" "team" {
  slug = var.team_name
}

data "github_repositories" "repositories" {
  query = "org:${var.organization} language:all"
}

resource "github_team_membership" "team_membership" {
  for_each =  toset(var.team_members)
  team_id  = data.github_team.team.id
  username = each.value
  role     = "member"
}


resource "github_team_repository" "manage_access_repository" {
  for_each = toset(data.github_repositories.repositories.names[*])
  team_id    = data.github_team.team.id
  repository = each.key
  permission = "admin"
}