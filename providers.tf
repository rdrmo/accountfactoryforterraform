provider "tfc" {
  #hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
  token    = var.token
  version  = "~> 0.49.2"
}

# Create an organization
#resource "tfe_organization" "org" {
  # ...
}
