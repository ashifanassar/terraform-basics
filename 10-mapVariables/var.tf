variable "COMPONENTS" {
  
  default = {
    catalogue = {
        instance_type = "t2.micro"
    },
    cart = {
        instance_type = "t2.micro"
    },
    user = {
        instance_type = "t2.medium"
    },
    ratings = {
        instance_type = "t2.micro"
    },
    payment = {
        instance_type = "t2.micro"
    }
  }
}