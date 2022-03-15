terraform {
  backend "gcs" {
    bucket = "om30-terraform-state-bucket"
    prefix = "om30\tfstate-sonarqube"
  }
}

data "terraform_remote_state" "sonar_remote_state" {
  backend = "gcs"
  config = {
    bucket = "om30-terraform-state-bucket"
    prefix = "om30\tfstate-sonarqube"
  }
}