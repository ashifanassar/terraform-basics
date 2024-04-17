module "ec2" {
  source = "./ec2"
  sg = module.sg.sg
}

module "sg" {
    source = "./sg"

}

output "private_ip" {
    value  = module.ec2.private_ip_address
}