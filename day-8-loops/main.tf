resource "aws_instance" "ec2" {
    for_each = tomap({
        server-1 = "t3.micro"
        server-2 = "t3.small"
        server-3 = "c7i-flex.large"
    })
    ami = "ami-02167eae61967e403"
    instance_type = each.value
    key_name = "abhi"
    tags = {
        Name = each.key
    } 
}

