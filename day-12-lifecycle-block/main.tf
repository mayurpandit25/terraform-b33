resource "aws_s3_bucket" "s3" {
    bucket = "mayurcbz.space"

    lifecycle {
      prevent_destroy = true 
    }

    tags = {
        Name = "mayurcbz.space"
    }
}