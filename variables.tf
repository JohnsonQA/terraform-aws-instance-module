variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID for EC2 instance"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
    description = "instance size"
}

#It's mandatory to provide as this is not a default for every projects
variable "sg_ids"{
    type = list
}

variable "tags"{
    type = map
}