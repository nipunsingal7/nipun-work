variable "subnet_cidr"{
type=string
description="it is the cidr_block of the subnet"
}

variable "vpc_id"{
type=string
description="it is to specify vpc id for subnet"
}

variable "subnetname"{
type=string
description="it is the name of the subnet"
}

variable "azs"{
type=string
description="it is to specify AZ for subnet"
}


variable "ipv6_assignment_on_creation"{
type=bool
description="it is to specify true/false to auto assign ipv6 on creation for subnet"
}


variable "public_ip_on_launch"{
type=bool
description="it is to specify true/false for public ip assignment"
}


