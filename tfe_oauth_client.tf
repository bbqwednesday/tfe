data "tfe_oauth_client" "github" {
  organization = data.tfe_organization.default.name
  name         = "github-bbqwednesday-org"
}