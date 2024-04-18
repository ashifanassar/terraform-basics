module "ec2" {
  for_each = var.COMPONENTS
  source = "./ec2"
  component = each.key
  instance_type = each.value.instance_type

}

