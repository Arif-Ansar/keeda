variable "frontend_ip_name"{
    description = "frondend ip name"
    type = string
}

variable "frontend_subnet_name"{
    description = "frontend subnet name"
    type = string
}

variable "resource_group_name"{
    description = "resource group name"
    type = string
}

variable "virtual_network_name"{
    description = "name of the virtual network"
    type = string
}

variable "nic_name"{
    description = "name of the network interface"
    type = string
}

variable "location"{
    description = "location of the nic and VM"
    type = string
}

variable "virtual_machine_name"{
    description = "name of the frontend virtial machine"
    type = string
}

variable "VM_size"{
    description = "size of the frontend virtual machine"
    type = string
}

variable "admin_user"{
    description =  "username of the virtual machine"
    type = string
}

variable "admin_password"{
    description = "password of the virtual_machine"
    type = string
}

variable "image_publisher"{
    description = "name of the vm image publisher"
    type = string
}

variable "image_offer"{
    description = "offer of the VM"
    type = string
}

variable "image_sku"{
    description = "image sku for vm"
    type = string
}
variable "image_version"{
    description = "image version for the vm"
    type = string
}

variable "key_vault_name"{
    description = "name of the key vault"
    type = string
}

variable "password_secret_name"{
    description = "value of the password"
    type = string
}


