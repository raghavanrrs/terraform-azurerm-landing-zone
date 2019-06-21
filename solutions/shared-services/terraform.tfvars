###########################
# Shared Services Variables
###########################

#testing remove later, do not merge in
storage_account_name            = "kuhlmanlabstfstate"
state_key                       = "shared-services.tfstate"
access_key                      = "x3wWSiL9skUf362EgBBgpHETux+mHFd/ZKJAWkIbYuB6x7k7/9b7W/dSydvitYCq24Uh+hrv4JWwB4z4oUYc9g=="
app_id                          = "5b94ad20-024b-417d-a8e5-9da27e3c2b88"
client_secret                   = "2cd8bccc-b9da-4dc4-9362-86671574aaa2"
shared_services_subscription_id = "0fd6b65c-0ee2-4bb4-957d-1b92fff9d1b4"
subscription_id                 = "0fd6b65c-0ee2-4bb4-957d-1b92fff9d1b4"
tenant_id                       = "4f86b03e-3df6-4d41-b222-9582f9e231cb"
#testing remove later, do not merge in

environment         = "shared-services"
region              = "eastus"
vnet_address_ranges = ["10.0.0.0/16"]
subnets_hub = [
  {
    name        = "GatewaySubnet"
    subnet_cidr = "10.0.100.0/27"
  },
  {
    name        = "dmz"
    subnet_cidr = "10.0.1.0/24"
  }
]
nsg_rules = [
  {
    name                       = "SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "22"
    destination_port_range     = "22"
    source_address_prefix      = "VirtualNetwork"
    destination_address_prefix = "*"
  },
  {
    name                       = "RDP"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "3389"
    destination_port_range     = "3389"
    source_address_prefix      = "VirtualNetwork"
    destination_address_prefix = "*"
  },
]
client_address_spaces = ["192.168.0.0/24"]
vpn_client_protocols  = ["IkeV2", "OpenVPN"]

############################
#Mandatory Tagging Variables
############################

owner_tag         = ""
region_tag        = ""
cost_center_tag   = ""
approver_tag      = ""
service_hours_tag = ""


###########################
#Optional Tagging Variables
###########################

optional_tags = {}