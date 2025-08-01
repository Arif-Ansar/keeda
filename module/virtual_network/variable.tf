variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
}
variable "virtual_network_location"{
    description = "location of the virtual network"
    type = string
}
variable "resource_group_name"{
    description = "name of the virtual network resource group"
    type = string
}

variable "address_space"{
    description = "the address space for the virtual network"
    type = list(string)
}