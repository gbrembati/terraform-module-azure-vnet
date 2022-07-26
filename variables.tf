variable "location" {
  description = "Used to set deployment location"
  default = "France Central"
}
variable "subnets-per-vnet" {
  description = "the number of subnet to create per each vnet (1 > num >= 4)"
  default = 2
}

variable "name-spokes" {
  description = "provide names of spokes, e.g."
  default = {
    "0" = ["spoke-A","frontend","backend","application"]
    "1" = ["spoke-B","frontend","backend","application"]   
  # "2" = ["spoke-C","frontend","backend","application"] 
  } 
}
variable "cidr-spokes" {
  description = "provide cidr of spokes, e.g."
  default = {
    "0" = ["10.0.0.0/22","10.0.0.0/24","10.0.1.0/24","10.0.2.0/24"]
    "1" = ["10.0.4.0/22","10.0.4.0/24","10.0.5.0/24","10.0.6.0/24"]
  # "2" = ["10.0.8.0/22","10.0.8.0/24","10.0.9.0/24","10.0.10.0/24"]
  }
}
variable "deployment-tags" {
  description = "provide tag values, e.g."
  default = {
    owner       = "administrator"
    managed-by  = "terraform-cloud"
  }
}