
#security group

resource "aws_security_group" "allow_tls" {
  name        = "devops_security_group"
  description = "Allow TLS inbound traffic and all outbound traffic"




dynamic ingress {

  for_each = var.ingress_rules
  content {
    description     = ingress.value["description"]
    from_port       = ingress.value["from_port"]
    to_port         = ingress.value["to_port"]
    protocol        = ingress.value["protocol"]
    cidr_blocks     = ingress.value["cidr_blocks"]
  }
}
 dynamic egress {
    for_each = var.egress_rules
    content {
      
    description     = egress.value["description"]
    from_port       = egress.value["from_port"]
    to_port         = egress.value["to_port"]
    protocol        = egress.value["protocol"]
    cidr_blocks     = egress.value["cidr_blocks"]
  }
 }

  tags = {
     Name = "allow_ssh_sg"
  }

}




resource "aws_security_group" "app" {
  name        = "b57sg"
  description = "Allow TLS inbound traffic and all outbound traffic"




dynamic ingress {

  for_each = var.ingress_rules
  content {
    description     = ingress.value["description"]
    from_port       = ingress.value["from_port"]
    to_port         = ingress.value["to_port"]
    protocol        = ingress.value["protocol"]
    cidr_blocks     = ingress.value["cidr_blocks"]
  }
}
 dynamic egress {
    for_each = var.egress_rules
    content {
      
    description     = egress.value["description"]
    from_port       = egress.value["from_port"]
    to_port         = egress.value["to_port"]
    protocol        = egress.value["protocol"]
    cidr_blocks     = egress.value["cidr_blocks"]
  }
 }

  tags = {
     Name = "allow_ssh_sg"
  }

}
