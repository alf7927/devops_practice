provider "aws"{}

resource "aws_instance" "webapp" {
  ami           = "${var.webappami}"
  instance_type = "t2.micro"
  key_name = "${var.awskey}"
  count = 1
  associate_public_ip_address = true
    tags {
    Name = "webapp"
    Purpose = "devops"
   }
}
