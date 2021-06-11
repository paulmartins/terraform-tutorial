resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.ec2_instance_type
  tags          = var.tags
}