variable "sa_name" {
  type = string
}

variable "location" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "access_tier" {
  default = "Standard"
}

variable "ar_type" {
  default = "LRS"
}