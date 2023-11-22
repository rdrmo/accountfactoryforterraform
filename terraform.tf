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
      version = "~> 5.11.0"
    }
  }

  required_version = ">= 0.15.0"
}
