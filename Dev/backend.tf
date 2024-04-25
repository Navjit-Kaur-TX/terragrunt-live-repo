terraform {


  backend "s3" {
    bucket = "aws-tf-state-bucket-tx"
    region = "us-east-1"
    key = "remotedemo.tfstate"
    # ... your Bitbucket backend configuration ...
  }
}
