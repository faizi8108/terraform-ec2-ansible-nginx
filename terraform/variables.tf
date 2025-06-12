variable "region" {
  description = "The AWS region to deploy into"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0120bca902526ae75"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = "faizan-keypair-v2"
}
