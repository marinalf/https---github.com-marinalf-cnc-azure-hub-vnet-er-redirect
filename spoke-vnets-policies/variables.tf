
# CNC Credentials & Azure Subscription

variable "username" {}
variable "password" {}
variable "url" {}
variable "subscription_id" {}


variable "tenant_name" {
  default = "dc1"
}

variable "vnet1_name" {
  default = "application"
}

# VNet1 EPG (Single ASG, Network Centric)

variable "vnet1_ap" {
  default = "vnet1-ap"
}

variable "vnet1_epg" {
  default = "vne1-epg"
}

variable "vnet1_epg_selector" {
  default = "vnet1-epg-selector"
}

variable "vnet1_epg_ip_based" {
  default = "IP=='20.100.0.0/21'"
}

# Internet External EPG + Contract

variable "vnet1_internet" {
  default = "vnet1-internet"
}

variable "vnet1_selector_name" {
  default = "Internet"
}

variable "vnet1_selector_subnet" {
  default = "0.0.0.0/0"
}

variable "internet_contract" {
  default = "internet-access"
}

# ER contract to allow on-prem to cloud connectivity

variable "er_contract_onprem_to_cloud" {
  default = "onprem-to-cloud"
}
