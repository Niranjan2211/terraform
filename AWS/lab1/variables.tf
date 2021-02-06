variable "image" {
  description = "The name of the network being created outside module "
  default = "ami-0a9d27a9f4f5c0efc"
  type = string
}

variable "user_data" {
  description = "The name of the network being created outside module "
  #default = "<<EOF
  #type = string
}

variable "instance" {
  description = "The name of the network being created outside module "
  default = "t2.micro"
  #type = string
}
