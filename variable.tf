variable "ec2_size" {
  default = "t2.small"
  description = "mention the ec2-instance size"
}

variable "ec2_name" {
  default = null
}
variable "ami_id" {
  default = null
}

variable "ami-name-filter" {
  default = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  description = "mentioned the image of os by default it taken :ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-* "
}

variable "owner-name" {
    default = ["099720109477"]
    description = "aws-ami owner id"
}