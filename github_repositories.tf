data "github_repositories" "terraform" {
  query = "org:bbqwednesday terraform NOT cloud-terraform"
}

data "github_repositories" "default" {
  query = "org:bbqwednesday NOT terraform"
}