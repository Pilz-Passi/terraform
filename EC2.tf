resource "aws_instance" "deham6demo1"{
    ami = "ami-0ae49954dfb447966"
    instance_type = "t3.micro"
    key_name = "vockey"
    vpc_security_group_ids = ["sg-09865e0155ddfa334"]
    subnet_id = "subnet-0a799df905c521d71"
    tags = {
        Name = "deham6demo1"
    }
}