terraform {
  backend "s3" {
    bucket = "tf-state-tkaburagi"
    key    = "my-state"
    region = "ap-northeast-1"
  }
  # backend "remote" {
  #   organization = "tkaburagi"

  #   workspaces {
  #     name = "state-migrate-demo"
  #   }
  # }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "state-demo-instance-kabu" {
  ami           = "ami-06d9ad3f86032262d"
  count         = 1
  instance_type = "t2.micro"
}
