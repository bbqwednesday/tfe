data "github_repositories" "terraform" {
  query = "org:bbqwednesday terraform NOT terraform-cloud"
}

data "github_repositories" "default" {
  query = "org:bbqwednesday NOT terraform"
}