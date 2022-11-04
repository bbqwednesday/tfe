resource "tfe_workspace" "default" {
  for_each     = toset(data.github_repositories.default.names)
  name         = replace(each.key, ".", "-")
  organization = data.tfe_organization.default.name
  auto_apply   = false
}

resource "tfe_workspace" "auto_apply" {
  for_each     = toset(data.github_repositories.terraform.names)
  name         = replace(each.key, ".", "-")
  organization = data.tfe_organization.default.name
  auto_apply   = true
  vcs_repo {
    identifier         = format("%s/%s", data.tfe_organization.default.name, each.key)
    ingress_submodules = true
    oauth_token_id     = data.tfe_oauth_client.github.oauth_token_id
    branch             = "main"
  }
}