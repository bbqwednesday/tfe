terraform {
  cloud {
  }

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.37.0"
    }
  }
}

provider "tfe" {}