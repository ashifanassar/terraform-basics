#variable "sample" {}    //Declaring the empty variable


variable "sample" {
    default = "terraform"
}

output "sample_op" {
    value = var.sample
}

output "sample_output_var" {
    value = "value of sample is ${var.sample}"
}