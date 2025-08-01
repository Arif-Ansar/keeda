data "azurerm_public_ip" "iP_of_frontend"{
    name = var.frontend_ip_name
    resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "frontend_subnet"{
    name =var.frontend_subnet_name
    virtual_network_name = var.virtual_network_name
    resource_group_name = var.resource_group_name
}

data "azurerm_key_vault" "kv"{
    name = var.key_vault_name
    resource_group_name = var.resource_group_name
}

data "azurerm_key_vault_secret" "secret"{
    name = var.password_secret_name 
    key_vault_id = data.azurerm_key_vault.kv.id
}