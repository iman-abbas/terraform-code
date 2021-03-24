provider "aws" {
  region = "ap-south-1"
}

module "ec2-iam" {
    source = "../modules/ec2-iam"

    instance = "t2.micro"
    tag = "module-created-ec2"
    userdata-file = "/home/ttn/Desktop/terraform/q4/userdata.sh"
    ami = "ami-0d758c1134823146a"
    name-role = "test-role"
    policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
    name-role-policy = "test-policy"
    assume-role-policy =jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
  
}