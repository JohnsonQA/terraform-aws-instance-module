variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID for EC2 instance"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
    description = "instance size"

    #This validation block restricts the instance size so that user cannot use other sizes
    validation {
        condition = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "Valid values for instance_type are: t3.micro, t3.small, t3.medium"
    }
}

#It's mandatory to provide as this is not a default for every projects
variable "sg_ids"{
    type = list
}

variable "tags"{
    type = map
}