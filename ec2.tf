resource "aws_instance" "dev" {
  ami             = "ami-09ce2fc392a4c0fbc"
  instance_type   = "t2.micro"
  security_groups = ["all-open-sg"]
}


resource "aws_security_group" "sg" {
  name = "all-open-sg"

  #Incoming traffic
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your ip address
  }

  #Outgoing traffic
  egress {
    from_port   = 0
    protocol    = "tcp"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}