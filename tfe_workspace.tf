resource "tfe_workspace" "email-capture-function" {
  name         = "email-capture-function"
  organization = data.tfe_organization.default.name
  auto_apply   = true
  vcs_repo {
    identifier         = format("%s/%s", data.tfe_organization.default.name, "email-capture-function")
    ingress_submodules = true
    oauth_token_id     = data.tfe_oauth_client.github.oauth_token_id
    branch             = "main"
  }
}

resource "tfe_workspace" "cloudflare-terraform" {
  name         = "cloudflare-terraform"
  organization = data.tfe_organization.default.name
  auto_apply   = false
  vcs_repo {
    identifier         = format("%s/%s", data.tfe_organization.default.name, "cloudflare-terraform")
    ingress_submodules = true
    oauth_token_id     = data.tfe_oauth_client.github.oauth_token_id
    branch             = "main"
  }
}