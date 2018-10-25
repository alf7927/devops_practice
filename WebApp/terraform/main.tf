provider "aws"{}

resource "aws_instance" "webapp" {
  ami           = "${var.webappami}"
  instance_type = "t2.micro"
  key_name = "${var.awskey}"
  count = 4
  subnet_id = "subnet-327cb369"
  associate_public_ip_address = true
    tags {
    Name = "webapp"
    Purpose = "devops"
   }

   vpc_security_group_ids = ["${data.aws_security_group.devops_sg.id}"]
}
data "aws_security_group" "devops_sg" {
  tags {
    Name = "devops_trainning"
  }
}
