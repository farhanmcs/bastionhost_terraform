variable "AWS_REGION" {
   description = "Please enter AWS Region: "
}

variable "PUBLIC_KEY" {
   description = "Please enter path to the public key used to connect EC2 Bastion host: "
}

variable "EC2_AMI" {
   description = "Please enter AMI of the EC2 instance to be configured as Bastion host: "
}

variable "AWS_VPC" {
   description = "Please enter the VPC ID in which Bastion EC2 instance resides: "
}

variable "PUBLIC_SUBNET" {
   description = "Please enter the AWS Public Subnet ID in which Bastion EC2 instance resides: "
}

variable "PRIVATE_SUBNET" {
   description = "Please enter the AWS Private Subnet ID in which your private EC2 instance resides and traffic comes to it only through Bastion host: "
}
