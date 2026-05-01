terraform {
  backend "s3" {
    bucket       = "gha-project-bucket-42026"
    key          = "terraform/state/main/terraform.tfstate"
    region       = "us-east-1" 
    use_lockfile = true        
    encrypt      = true
  }
}
