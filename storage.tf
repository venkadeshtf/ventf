resource "azurerm_resource_group" "rg-tf1" {
  name     = var.rg_name
  location = var.rglocation
}

resource "azurerm_resource_group" "rg-tf2" {
  name     = var.rg_name2
  location = var.rglocation
}

resource "azurerm_resource_group" "rg-tf3" {
  name     = var.rg_name67
  location = var.rglocation
}

resource "azurerm_resource_group" "rg-tf2966" {
  name     = var.rg_name99
  location = var.rglocation
}

resource "azurerm_storage_account" "rg-st1" {
  name                     = var.storageacname2966
  resource_group_name      = azurerm_resource_group.rg-tf1.name
  location                 = azurerm_resource_group.rg-tf1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
} 

resource "azurerm_storage_account" "rg-devopsst" {
  name                     = var.storageacname12102022
  resource_group_name      = azurerm_resource_group.rg-tf1.name
  location                 = azurerm_resource_group.rg-tf1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
