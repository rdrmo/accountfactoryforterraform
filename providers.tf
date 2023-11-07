terraform {
  cloud {
    organization = "Amazon_rdrmo"

    workspaces {
      name = "AccountFactoryForTerraform"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
