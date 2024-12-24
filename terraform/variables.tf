variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  description = "Amazon Machine Image ID"
  default     = "ami-0e2c8caa4b6378d8c" 
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t2.micro"
}

variable "ssh_key_name" {
  description = "Name of the SSH key pair"
  default     = "test-key"
}

variable "sg_name" {
  description = "Security Group Name"
  default     = "test_sg"
}

variable "public_key_path" {
  description = "Path to the local public SSH key"
  default     = "~/.ssh/id_rsa.pub"
}

