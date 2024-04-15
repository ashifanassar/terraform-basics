#variable "sample" {}    //Declaring the empty variable


variable "sample" {
    default = "terraform"
}

output "sample_op" {
    value = var.sample
}