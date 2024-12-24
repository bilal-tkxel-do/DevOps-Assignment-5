provider "aws" {
  region = var.region
}

resource "aws_key_pair" "test_key" {
  key_name   = var.ssh_key_name
  public_key = file(var.public_key_path) # Use the public key path from the variable
}

resource "aws_security_group" "test_sg" {
  name        = var.sg_name
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 81
    to_port     = 81
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = aws_key_pair.test_key.key_name
  security_groups = [aws_security_group.test_sg.name]

  tags = {
    Name = "web-server"
  }
}

