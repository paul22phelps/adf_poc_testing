variable "subscription_id" {
  type = string
  default = ""
  description = "Azure Subscription ID to perform actions against"
}
  
  variable "location" {
  description = "Azure Location used"
  default     = "eastus2"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Application environment. Used for enforcing Naming and Tagging Convention"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the web app."
  type        = string
}

variable "cost-center" {
  type    = string
  default = "2012-6025004"
}

variable "owner" {
  type    = string
  default = "paul.phelps@kroger.com"
}

variable "lob" {
  type    = string
  default = "Health&Wellness"
}

variable "spm_id" {
  type    = string
  default = "4984"
}

variable "application_name" {
  type    = string
  default = "testapp2999"
}

variable "gh_acct_name" {
  type = string
  default = "krogertechnology"
  description = "The GitHub Account Name"
}

variable "gh_branch_name" {
  type = string
  default = "main"
  description = "The GitHub Branch Name"
}

variable "gh_repo_name" {
  type = string
  default = ""
  description = "The GitHub Repository Name"
}

variable "gh_root_folder" {
  type = string
  default = "/"
  description = "The GitHub Root Folder"
}

variable "git_url" {
  type = string
  default = "https://github.com"
  description = "The Git URL"
}