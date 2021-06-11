variable "ami" {
  description = "AWS EC2 AMI"
  type        = string
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type"
  type        = string
}

variable "tags" {
  description = "Tags to set on the ec2"
  type        = map(string)
}