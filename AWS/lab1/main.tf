resource "aws_instance" "app" {
 instance_type = var.instance
 ami = var.image
 user_data = var.user_data
}
resource "aws_security_group" "aws_sg" {
  #name        = "aws_sg"
  #description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id
  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "amazonami" {
  most_recent = true
  #name_regex  = "^Windows_Server-2019*"
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }
/*
  filter {
    name   = "architecture"
    values = ["x86*"]
    
  }*/
}
data "aws_ec2_instance_type_offerings" "t2" {
  location_type = "region"

  filter {
    name = "instance-type"
    values = ["t2.*"]

  }
}

###############################################
/*
resource "google_compute_instance" "centos7" {
name = "elasticsearch1"
machine_type = "n1-standard-2"	
#zone = ""us-central1-b""

	boot_disk {
	initialize_params {
	image = "centos-7-v20190326"
   		 }
          }
network_interface {
       network = "sent-vpc1"
       subnetwork  = "sent-vpc1"
       access_config {
                     }
                         }

}
*/
