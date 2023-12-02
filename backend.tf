terraform {
  backend "s3" {
    region               = "us-east-1"
    bucket               = "tfstate-wesley-011"
    key                  = "github-backup/state.tfstate"
  }
}