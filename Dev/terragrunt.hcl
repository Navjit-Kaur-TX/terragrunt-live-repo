remote_state {
  backend = "s3"
  config = {
    bucket = "demotxstatefile"
    key    = "demotxstatefile.tfstate"
    region = "us-east-1"
  }
}

inputs = {
  vm_name          = "my-vm" 
  # ... other variables you'll use across modules
}
