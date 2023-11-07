terraform {
/*
  cloud {
    organization = "Amazon_rdrmo"

    workspaces {
      name = "AccountFactoryForTerraformLab"
    }
  }
*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.27.0"
    }
  }

  required_version = ">= 0.15.0"
}
