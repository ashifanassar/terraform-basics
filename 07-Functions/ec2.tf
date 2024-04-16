# Defining the resources 
resource "aws_instance" "checker" {       # name of the resource as per terraform
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"
  count = 3


  tags = {
    Name = "checker-instance"
  }
}

# # Printing the output
# output "private_ip_address" {
#     value = aws_instance.web.private_ip
# }