variable "groupname"{
type= string
description="it is for name of security group "
}



variable "vpcid"{
type=string
description="it is vpc id"
}



variable "grouptagname"{
type=string
description="it is tag name for group"
}


variable "from_port_ingress"{
type=number
description="it is from port for ingress"
}


variable "to_port_ingress"{
type=number
description="it is to port for ingress"
}

variable "protocol_ingress"{
type=string
description="it is protocol for ingress"
}

variable "cidr_blocks_ingress"{
type=any
description="it is cidr block for ingress"
}


variable "from_port_egress"{
type=number
description="it is from port for egress"
}


variable "to_port_egress"{
type=number
description="it is to port for egress"
}

variable "protocol_egress"{
type=string
description="it is protocol for egress"
}

variable "cidr_blocks_egress"{
type=any
description="it is cidr block for egress"
}


