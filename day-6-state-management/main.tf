resource "aws_instance" "public_instance" {
    ami = "ami-0bea529386a62a2ad"
    instance_type = "t3.micro"
    key_name = "abhi"
    count = 2
    vpc_security_group_ids = ["sg-06195bdcb03b1e8f0"]
    tags = {
        Name = "public_instance"
    } 
}

