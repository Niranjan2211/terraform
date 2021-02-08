provider "aws" {
  region                  = "ap-south-1" # Arguments #
  shared_credentials_file = "/root/.aws/credentials"
  #  profile                    = "pocaws"

}

provider "google" {
credentials = file("/root/gcp.json")
project = "My First Project"
region = "europe-west1"
#region = "us-west1"
#zone = "us-west1-a"
zone = "europe-west1-a"
}
provider "azurerm" {
  features {}
}
