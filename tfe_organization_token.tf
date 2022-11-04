resource "tfe_organization_token" "default" {
  organization     = data.tfe_organization.default
  force_regenerate = true
}