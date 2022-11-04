terraform {
  #  cloud {
  #  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.7.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.38.0"
    }
  }
}