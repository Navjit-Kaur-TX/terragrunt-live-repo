remote_state {
  backend = "s3"
  config = {
    bucket = "aws-tf-state-bucket-tx"
    key    = "remotedemo.tfstate"
    region = "us-east-1"
  }
  generate = {
    if_exists = "overwrite"
  }
}

inputs = {
  vm_name          = "my-vm" 
  # ... other variables you'll use across modules
}
