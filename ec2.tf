resource "aws_instance" "shiva_ec2" {
  ami = "ami-0ceecbb0f30a902a6"
  instance_type = "t2.micro"
}
