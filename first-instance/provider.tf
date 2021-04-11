variable "path" {
  default = "/Users/vaibhavzodge/Documents/Vaibhav/Terraform/credentials"
}

provider "google"{
    project = "terraform-learning-310418"
    region = "us-central1-a"
    credentials=file("${var.path}/secret.json")
    //credentials=file(var.path+"/secret.json")
}