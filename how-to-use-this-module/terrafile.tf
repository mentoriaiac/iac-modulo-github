module "github_teams_members" {
  source       = "../"
  organization     = "mentoriaiactest"
  team_members = ["user1", "user2"]
  team_name = "developers"
}
