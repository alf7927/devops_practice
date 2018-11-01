resource "aws_instance" "k8s" {
//  ami = "ami-021702b92d9025550"
  ami = "ami-819df8f9"
  count = 3
  instance_type = "t2.medium"
  subnet_id = "subnet-327cb369"
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0c478527fcada9e0d","sg-577a2d2c"]
  key_name = "${var.awskey}"
  tags {
    Name = "kgi-test"
    Purpose = "rancher k8s test"
  }
}


resource "aws_instance" "jumpbox" {
//  ami = "ami-021702b92d9025550"
  ami = "ami-819df8f9"
  count = 1
  instance_type = "t2.medium"
  subnet_id = "subnet-327cb369"
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0c478527fcada9e0d","sg-577a2d2c"]
  key_name = "${var.awskey}"
  tags {
    Name = "kgi-test"
    Purpose = "jumpbox k8s test"
  }
}

