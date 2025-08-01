variable "public_ip_name"{
    description = "name of the public ip"
    type = string
}

variable "resource_group_name"{
    description = "resource group name of the public ip"
    type = string
}

variable "public_ip_location"{
    description = "public ip location"
    type = string
}

variable "allocation_method"{
    description = "public ip's allocation method"
    type = string
    default = "Static"
}