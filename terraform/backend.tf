terraform {
  backend "s3" {
    bucket = "devops2022-tf-state"
    key    = "demo/terrform.tfstate"
    region = "us-east-2"
  }
}
