
### Notes

This is a sample code to build networking and policies on Azure through Cloud Network Controller. Some of the initial config and services need to be configured via GUI. 

### Pre-requisites / Assumptions

1. First Time Setup configured and ER deployed on gateway subnet of Hub VNet.
2. Deploy secondary VRF **(hub-vnet-networking)**, disable VNet peering, and add secondary CIDRs for different services in the Hub VNet. 
3. Deploy 3rd party firewall on Azure within the CIDR/Subnets defined in the Hub VNet.
4. Deploy Hub VNet policies **(hub-vnet-policies)** for ER and firewall mgmt access. 
5. Deploy sample VNet and subnets **(spoke-vnets-networking)**.
6. Deploy sample VNet policies **(spoke-vnets-policies)**.
7. Deploy inter-tenant imported contract on Hub VNet (see notes on hub-vnet-policies under aci_cloud_external_epg). 
8. Create a logical device for firewall and tag interfaces on CNC as well on azure. Define service graph for Redirect.
9. Associate the service graph with Redirect on the ER contract (cloud-to-onprem) and inter-vnet contract (not part of this code). 