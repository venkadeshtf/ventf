resource "azurerm_resource_group" "rg-deepak" {
  name     = var.rgdeepak1
  location = var.rgdeepaklocation
}

resource "azurerm_resource_group" "rg-murali" {
  name     = var.rgmurali
  location = var.rgmuralilocation
}

resource "azurerm_resource_group" "rg-venkat" {
  name     = var.rgvenkat
  location = var.rgvenkatlocation
}

resource "azurerm_storage_account" "rg-dks111" {
  name                     = var.eeffgg
  resource_group_name      = azurerm_resource_group.rg-deepak.name
  location                 = azurerm_resource_group.rg-deepak.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
} 

resource "azurerm_storage_account" "rg-mk222" {
  name                     = var.aabbcc
  resource_group_name      = azurerm_resource_group.rg-murali.name
  location                 = azurerm_resource_group.rg-murali.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "rg-vp333" {
  name                     = var.qqwwee
  resource_group_name      = azurerm_resource_group.rg-venkat.name
  location                 = azurerm_resource_group.rg-venkat.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
} 
