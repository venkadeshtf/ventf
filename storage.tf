resource "azurerm_resource_group" "zzd" {
  name     = var.azz199
  location = var.clocd
}

resource "azurerm_resource_group" "yym" {
  name     = var.byy299
  location = var.dlocm
}

resource "azurerm_resource_group" "xxv" {
  name     = var.cxx399
  location = var.elocv
}

resource "azurerm_storage_account" "savd" {
  name                     = var.mi600
  resource_group_name      = azurerm_resource_group.zzd.name
  location                 = azurerm_resource_group.zzd.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
} 

resource "azurerm_storage_account" "zanm" {
  name                     = var.xio711
  resource_group_name      = azurerm_resource_group.yym.name
  location                 = azurerm_resource_group.yym.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "bmssms" {
  name                     = var.sung888
  resource_group_name      = azurerm_resource_group.xxv.name
  location                 = azurerm_resource_group.xxv.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
} 
