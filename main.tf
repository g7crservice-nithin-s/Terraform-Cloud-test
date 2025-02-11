terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.16.0"
    }
  }
  required_version = ">=1.9.0"
}

provider "azurerm" {
  features {}
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id       = var.ARM_TENANT_ID
}

variable "environment" {
  type = string
}
variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}
variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_TENANT_ID" {}
resource "azurerm_resource_group" "myRcGroup" {
  name = "resource-group-prasad1"


  location = "Central India"
}

resource "azurerm_storage_account" "example" {
  name                     = "storarageaccout1421"
  resource_group_name      = azurerm_resource_group.myRcGroup.name
  location                 = azurerm_resource_group.myRcGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}
resource "azurerm_storage_account" "example" {
  name                     = "storarageaccout1421"
  resource_group_name      = azurerm_resource_group.myRcGroup.name
  location                 = azurerm_resource_group.myRcGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}
