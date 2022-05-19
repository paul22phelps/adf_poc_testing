# terraform variables for the github environment/branch 'dev'
environment         = "dev"
resource_group_name = "test_kroger"
application_name    = "testappadf"
subscription_id     = "535556cb-d24e-41e9-9fd2-11c6af2b1e79"

github_configuration = {
  gh_acct_name   = "paul22phelps"
  gh_branch_name = "main"
  gh_repo_name   = "hw-testappadf-adf"
  gh_root_folder = "/"
  git_url        = "https://github.com"
}