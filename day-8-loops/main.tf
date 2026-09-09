resource "aws_instance" "ec2" {
    for_each = tomap({
        server-1 = "t3.micro"
        server-2 = "t3.small"
        server-3 = "c7i-flex.large"
    })
    ami = "ami-01a00762f46d584a1"
    instance_type = each.value
    key_name = "abhi"
    tags = {
        Name = each.key
    } 
}

