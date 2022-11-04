resource "tfe_organization_token" "default" {
  organization     = data.tfe_organization.default.id
  force_regenerate = true
}