variable "ami_id" {
  description = "The AMI Id create the EC2 Instance"
}

variable "subnets" {
  description = "The VPC subnets"
  type = list(string)
}

variable "vpc_id" {
  description = "The VPC id"
}