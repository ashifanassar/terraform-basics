
# Defining the resources 
resource "aws_instance" "app" {
  ami                     = "ami-072983368f2a6eab5"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]


  tags = {
    Name = "tf-instance"
  }
}

# Printing the output
output "private_ip_address" {
    value = aws_instance.app.private_ip
}