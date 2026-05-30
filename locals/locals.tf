locals {

  ami_id = "ami-0220d79f3f480ecf5"

  instance_type = "t3.micro"

  instance_name = "${var.name}-${var.environment}"

  common_tags = {
    Project   = "roboshop"
    Terraform = "true"
  }

  ec2_final_tags = merge(
    var.ec2_tags,
    local.common_tags,
    {
      Name = local.instance_name
    }
  )
}