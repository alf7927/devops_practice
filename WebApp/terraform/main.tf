provider "aws"{}

resource "aws_instance" "webserver" {
  ami           = "${var.webappami}"
  instance_type = "t2.micro"
  key_name = "${var.awskey}"
  count = 2
  subnet_id = "subnet-327cb369"
  associate_public_ip_address = true
    tags {
    Name = "webserver"
    Purpose = "webserver"
   }

   vpc_security_group_ids = ["${data.aws_security_group.devops_sg.id}"]
}

resource "aws_instance" "dbserver" {
  ami           = "${var.webappami}"
  instance_type = "t2.micro"
  key_name = "${var.awskey}"
  count = 1
  subnet_id = "subnet-327cb369"
  associate_public_ip_address = true
    tags {
    Name = "dbserver"
    Purpose = "dbserver"
   }

   vpc_security_group_ids = ["${data.aws_security_group.devops_sg.id}"]
}
data "aws_security_group" "devops_sg" {
  tags {
    Name = "devops_trainning"
  }
}
