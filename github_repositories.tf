data "github_repositories" "terraform" {
  query = "org:bbqwednesday terraform"
}

data "github_repositories" "default" {
  query = "org:bbqwednesday -terraform -tfe"
}