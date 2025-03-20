# main.tf

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  # Use your GitHub username or organization name
  owner = "cloudlabmp"
  
  # For token-based authentication
  # Token should be set via GITHUB_TOKEN environment variable
  
  # Alternatively, for GitHub App authentication, uncomment and configure:
  # app_auth {
  #   id              = var.app_id              # or use GITHUB_APP_ID env var
  #   installation_id = var.app_installation_id # or use GITHUB_APP_INSTALLATION_ID env var
  #   pem_file        = var.app_pem_file        # or use GITHUB_APP_PEM_FILE env var
  # }
}

# Create backend repository
resource "github_repository" "backend_repo" {
  name        = "backend"
  description = "Repository for backend code"
  
  auto_init = true  # Initialize with README
  
  visibility = "private"  # Or "public" depending on your requirements
}

# Create development branch for backend repository
resource "github_branch" "backend_dev_branch" {
  repository = github_repository.backend_repo.name
  branch     = "development"
  
  # Use the default branch as source without referencing deprecated attribute
  source_branch = "main"  # Assuming "main" is the default branch name
  
  # Explicitly depend on the repository
  depends_on = [github_repository.backend_repo]
}

# Create frontend repository with explicit dependency on backend
resource "github_repository" "frontend_repo" {
  name        = "frontend"
  description = "Repository for frontend code"
  
  auto_init = true  # Initialize with README
  
  visibility = "public"  # Or "public" depending on your requirements
  
  # Explicit dependency on the backend repository
  depends_on = [github_repository.backend_repo]
}

# Create development branch for frontend repository
resource "github_branch" "frontend_dev_branch" {
  repository = github_repository.frontend_repo.name
  branch     = "development"
  
  # Use the default branch as source without referencing deprecated attribute
  source_branch = "main"  # Assuming "main" is the default branch name
  
  # Explicitly depend on the repository
  depends_on = [github_repository.frontend_repo]
}