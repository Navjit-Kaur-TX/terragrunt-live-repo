terraform {


  backend "s3" {
    bucket = "demotxstatefile"
    region = "us-east-1"
    key = "demotxstatefile.tfstate"
    # ... your Bitbucket backend configuration ...
  }
}