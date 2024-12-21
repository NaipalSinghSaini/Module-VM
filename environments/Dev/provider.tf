terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "491f9fa0-4519-4a79-9841-cf90eddfd12c"
}