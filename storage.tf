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

resource "azurerm_storage_account" "rg-deepakstr111" {
  name                     = var.deepakstrname
  resource_group_name      = azurerm_resource_group.rg-deepak.name
  location                 = azurerm_resource_group.rg-deepak.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
} 

resource "azurerm_storage_account" "rg-muralistr222" {
  name                     = var.muralistrname
  resource_group_name      = azurerm_resource_group.rg-murali.name
  location                 = azurerm_resource_group.rg-murali.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "rg-venkatstr333" {
  name                     = var.venkatstrname
  resource_group_name      = azurerm_resource_group.rg-venkat.name
  location                 = azurerm_resource_group.rg-venkat.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
} 