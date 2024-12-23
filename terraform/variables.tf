# variables.tf

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  description = "Amazon Machine Image ID"
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t2.micro"
}

variable "sg_name" {
  description = "Security Group Namw"
  default     = "web_sg"
}
variable "ssh_key_name" {
  description = "Name of the SSH key pair"
  default     = "my-key"
}

variable "public_key_path" {
  description = "Path to the local public SSH key"
  default     = "/.ssh/id_rsa.pub"
}
