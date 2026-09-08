provider "aws" {
    region = "us-west-2"
    profile = "dev"
}

terraform {
  backend "s3" {
    bucket = "mayurcbz.space"
    region = "us-west-2"
    profile = "dev"
    use_lockfile = true 
    key = "terraform.tfstate"
    shared_credentials_file = ["/root/.aws/credentials"]
  }
}

