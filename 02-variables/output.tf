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

output "batch_serial" {
    value = var.batch
}

#Declring the  list 

variable "example_list" {
    default = [
        "Devops",
        "AWS",
        50
    ]
  
}

output "printing_list" {
    value = "welcome to the list ${var.example_list[0]} list with the cloud provider ${var.example_list[1]} in the bactch ${var.example_list[2]}"
  
}

#Declaring the map variable

variable "learning_map" {
    default = {batch = 56
                mode = "online"
                learning = "Devops learning"}
}

output "Learning_output_map" {
    value = "Welcome to ${var.learning_map["batch"]} and it covered in ${var.learning_map["mode"]} it is covered in${var.learning_map["learning"]}"
  
}


variable "city" {
  
}

output "fav_city" {
  value = var.city
}


variable "state" {
  
}

output "fav_state" {
  value = var.state
}