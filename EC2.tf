resource "aws_instance" "deham6demo1"{
    ami = "ami-0ae49954dfb447966"
    instance_type = "t3.micro"
    key_name = "vockey"
    vpc_security_group_ids = ["sg-01012e9941338c293"]
    subnet_id = "subnet-0a799df905c521d71"
    tags = {
        Name = "deham6demo1"
    }
    provisioner "local-exec"{
    command = "echo Instance Type=${self.instance_type},Instance ID=${self.id},Public DNS=${self.public_dns},AMI ID=${self.ami} >> allinstancedetails"
  }
}
