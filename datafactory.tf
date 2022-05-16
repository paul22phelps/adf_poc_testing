module "datafactory" {
  source              = "./modules/adf"
  application_name    = var.application_name
  environment         = var.environment
  resource_group_name = var.resource_group_name

github_configuration = {
  "dev" = {
gh_acct_name   = var.github_configuration.gh_acct_name
gh_branch_name = var.github_configuration.gh_branch_name
gh_repo_name   = var.github_configuration.gh_repo_name
gh_root_folder = var.github_configuration.gh_root_folder
git_url        = var.github_configuration.git_url
}}

#  account_name        = var.gh_acct_name
#  branch_name         = var.gh_branch_name
#  repository_name     = var.gh_repo_name
#  root_folder         = var.gh_root_folder
#  git_url             = var.git_url
}