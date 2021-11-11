data "local_file" "my_key" {
  filename = "${path.module}/data/keys/terraform_best_practices_rsa.pub"
}

resource "aws_key_pair" "my_access_key" {
  key_name   = "my-access-key"
  public_key = data.local_file.my_key.content

  tags = {
    project_name = "terraform_best_practices"
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "my-awesome-machine"

  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.my_access_key.key_name
  monitoring    = true
  subnet_id     = var.subnets
  vpc_security_group_ids = [
    aws_security_group.my_ssh_security_group.id,
    aws_security_group.my_http_security_group.id
  ]


  tags = {
    project_name = "terraform_best_practices"
  }
}

resource "aws_security_group" "my_ssh_security_group" {
  name        = "my-ssh-security-group"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress = [
    {
      description      = "SSH from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  tags = {
    Name         = "my-ssh-security-group"
    project_name = "terraform_best_practices"
  }
}

resource "aws_security_group" "my_http_security_group" {
  name        = "my-http-security-group"
  description = "Allow HTTP inbound traffic"
  vpc_id      = var.vpc_id

  ingress = [
    {
      description      = "HTTP from VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  tags = {
    Name         = "my-http-security-group"
    project_name = "terraform_best_practices"
  }
}