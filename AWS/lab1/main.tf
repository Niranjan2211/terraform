resource "aws_instance" "app" {
 instance_type = var.instance
 #ami = "ami-0a9d27a9f4f5c0efc"
 ami = var.image
 user_data = var.user_data
}
