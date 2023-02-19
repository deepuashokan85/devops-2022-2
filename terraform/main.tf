resource "aws_instance" "web_demo" {
          ami           = var.web_ami_id
          instance_type = var.inst_type
          subnet_id     = var.sub_id
          count         = var.count_num
          tags          = {
          Name          = "web_demo"
          }
}

resource "aws_instance" "oracle_demoi1" {
          ami           = var.oracle_ami_id
          instance_type = var.inst_type
          subnet_id     = var.sub_id
          count         = var.count_num
          tags          = {
          Name          = "oracle_demo"
          }
}

resource "aws_instance" "java_demo" {
          ami           = var.java_ami_id
          instance_type = var.inst_type
          subnet_id     = var.sub_id
          count         = var.count_num
          tags          = {
          Name          = "java_demo"
          }
}

resource "aws_instance" "mysql_demo" {
          ami           = var.mysql_ami_id
          instance_type = var.inst_type
          subnet_id     = var.sub_id
          count         = var.count_num
          tags          = {
          Name          = "mysql_demo"
          }
}
