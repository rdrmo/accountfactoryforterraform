terraform {
  cloud {
    organization = "Amazon_rdrmo"

    workspaces {
      name = "Example"
    }
  }
}

#provider "tfc" {
#  #hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
#  token    = var.terraformtoken
#  version  = "~> 0.49.2"
#}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.41.0"
    }
  }
}

# Create an organization
#resource "tfe_organization" "org" {
  # ...
#}

provider "aws" {
  region = var.aws_region
}
