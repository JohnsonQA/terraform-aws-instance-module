#modules are common code which can be re-use in multiple project. So everything to be dynamic
resource "aws_instance" "roboshop"{
    count = 3
    ami             = var.ami_id
    instance_type   = var.instance_type
    vpc_security_group_ids= var.sg_ids
    tags = var.tags
}