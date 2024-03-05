

terraform {
   backend "s3" {
     
    bucket = "terraformbucket5e46e6"
    key  = "terraform/state"
    region = "us-east-1"
    dynamodb_table = "terraformdemo234ddf"
   } 
}

