data "tfe_oauth_client" "github" {
  organization     = data.tfe_organization.default.name
  service_provider = "github"
}