#Module devs should give the output details as well. so that users can use the outputs seamlessly

output "public_ip"{
    value = "aws_instance.this.public_ip"  # here public_ip is the variable comes from output
}

output "private_ip"{
    value = "aws_instance.this.private_ip"
}

output "instance_id"{
    value = "aws_instance.this.id"
}