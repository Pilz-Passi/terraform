resource "aws_instance" "deham6demo1"{
    ami = "ami-0ae49954dfb447966"
    instance_type = "t3.micro"
    key_name = "vockey"
    vpc_security_group_id = aws_security_group.id
    subnet_id = aws_subnet.devVPC_public_subnet.id
    tags = {
        Name = "deham6demo1"
    }
    provisioner "local-exec"{
    command = "echo Instance Type=${self.instance_type},Instance ID=${self.id},Public DNS=${self.public_dns},AMI ID=${self.ami} >> allinstancedetails"
  }
}