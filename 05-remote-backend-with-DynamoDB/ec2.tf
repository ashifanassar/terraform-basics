
# Defining the resources 
resource "aws_instance" "app" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"


  tags = {
    Name = "tf-instance-remote-backend"
  }
}

# Printing the output
output "private_ip_address" {
    value = aws_instance.app.private_ip
}


#security group

resource "aws_security_group" "allow_tls" {
  name        = "devops_security_group"
  description = "Allow TLS inbound traffic and all outbound traffic"

    ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
 egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
     Name = "allow_ssh_sg"
  }

}

