remote_state {
  backend = "s3"
  config = {
    bucket = "aws-tf-state-bucket-tx"
    key    = "demotxstatefile.tfstate"
    region = "us-east-1"
  }
}

inputs = {
  vm_name          = "my-vm" 
  # ... other variables you'll use across modules
}
