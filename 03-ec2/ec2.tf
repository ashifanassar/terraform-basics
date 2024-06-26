 provider "aws" {
  # Configuration options
}

resource "aws_instance" "app" {
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-instance-dev"
  }
}


#Output to displayed

output "private_ip_address" {
    value = aws_instance.app.private_ip
  
}