module "datafactory" {
  source              = "./modules/adf"
  application_name    = var.application_name
  environment         = var.environment
  resource_group_name = var.resource_group_name

    gh_acct_name   = var.gh_acct_name
    gh_branch_name = var.gh_branch_name
    gh_repo_name   = var.gh_repo_name
    gh_root_folder = var.gh_root_folder
    git_url        = var.git_url


  #  account_name        = var.gh_acct_name
  #  branch_name         = var.gh_branch_name
  #  repository_name     = var.gh_repo_name
  #  root_folder         = var.gh_root_folder
  #  git_url             = var.git_url
}