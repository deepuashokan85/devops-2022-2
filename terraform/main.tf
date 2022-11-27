resource "aws_instance" "demo" {
          ami           = var.ami_id
          instance_type = var.inst_type
          subnet_id     = var.sub_id
          count         = var.count_num
          tags          = {
          Name          = "pradeep-terraform"
          }
}
