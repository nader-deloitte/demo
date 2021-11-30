resource "aws_instance" "dev" {
  ami           = "ami-09ce2fc392a4c0fbc"
  instance_type = "t2.micro"
}