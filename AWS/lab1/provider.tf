provider "aws" {
  region                  = "ap-south-1" # Arguments #
  shared_credentials_file = "/root/.aws/credentials"
  #  profile                    = "pocaws"

}
/*
provider "google" {
credentials = "${file("/root/gcp.json")}"
project = "My First Project"
region = "europe-west1"
}
*/
