variable "ct_management_account_id" {
  type = string
  default = ""
}

variable "log_archive_account_id" {
  type = string
  default = ""
}

variable "audit_account_id" {
  type = string
  default = ""
}

variable "aft_management_account_id" {
  type = string
  default = ""
}

variable "github_username" {
  type = string
  default = ""
}

variable "ct_home_region" {
  type = string
  default = "us-east-1"
}

variable "tf_backend_secondary_region" {
  type = string
  default = "us-east-2"
}

variable "terraformtoken" {
  type = string
}
