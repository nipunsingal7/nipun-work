provider "aws"{

region= "ap-south-1"
profile="default"
}


module "vpc1"{

source="./modules/vpc"
cidr_block="10.0.0.0/24"
name="first_vpc"
tenancy="default"

}


module "gateway1"{
source="./modules/gateway"
vpcid=module.vpc1.vpc_id
gwname="first_gateway"
}


module "subnet1"{
source="./modules/subnet"
vpc_id=module.vpc1.vpc_id
subnet_cidr="10.0.0.0/26"
ipv6_assignment_on_creation=false
azs="ap-south-1a"
public_ip_on_launch=true
subnetname="subnet1"
}


module "security_group_1"{
source="./modules/security_group"
groupname="sg1"
vpcid=module.vpc1.vpc_id
from_port_ingress=443
to_port_ingress=443
protocol_ingress="TCP"
cidr_blocks_ingress=["0.0.0.0/0"]

from_port_egress=80
to_port_egress=80
protocol_egress="TCP"
cidr_blocks_egress=["0.0.0.0/0"]

grouptagname="sg1"

}


module "route_table_1"{
source="./modules/routetable"
route_table_name="route_table_1"
vpc_id=module.vpc1.vpc_id
route_cidr_block="0.0.0.0/0"
gatewayid=module.gateway1.gw_id
subnetid=module.subnet1.subnet_id
}

