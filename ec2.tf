#modules are common code which can be re-use in multiple project. So everything to be dynamic
resource "aws_instance" "this"{   #this refers to current instance instance so that dynamically can be used by users in their projects
    ami             = var.ami_id
    instance_type   = var.instance_type
    vpc_security_group_ids= var.sg_ids
    tags = var.tags
}