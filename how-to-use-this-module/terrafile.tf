module "github_teams_members" {
  source       = "../"
  organization     = "teste-team-module"
  team_members = ["user1", "user2"]
  team_name = "developers"
}
