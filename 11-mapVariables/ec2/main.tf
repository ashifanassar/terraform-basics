data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["590183768065"]


}

resource "aws_instance" "datasourcesample" {
  ami           = data.aws_ami.example.id
  instance_type = var.instance_type

  tags = {
    Name = var.component
  }
}
