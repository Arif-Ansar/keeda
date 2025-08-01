variable "subnet_name"{
    description = "the name of the subnet"
    type = string  
}

variable "resource_group_name"{
    description = "resource group name in which subnet will be create"
    type = string
}

variable "virtual_network_name"{
    description = "name of the virtual network name in which subnet will be create"
    type = string
}

variable "address_prefixes"{
    description = "the address prifix for the subnet"
    type = list(string)
}
