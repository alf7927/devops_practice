provider "aws"{}

resource "aws_instance" "jenkins_server" {
  ami           = "${var.webappami}"
  instance_type = "t2.medium"
  key_name = "${var.awskey}"
  count = 1
  subnet_id = "subnet-327cb369"
  associate_public_ip_address = true
    tags {
    Name = "jenkinsServer"
    Purpose = "jenkinsServer"
   }

   vpc_security_group_ids = ["${data.aws_security_group.devops_sg.id}","${aws_security_group.http_public.id}"]
}

resource "aws_security_group" "http_public" {
  name        = "http_public"
  description = "Allow http inbound traffic"
  vpc_id      = "${data.aws_security_group.devops_sg.vpc_id}"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_security_group" "devops_sg" {
  tags {
    Name = "devops_trainning"
  }
}

resource "aws_route53_record" "jenkins_dns" {
    name = "jenkins-devops.inspur.io"
    type = "A"
    zone_id = "Z2ZYJ49R60B5A2"
    ttl = 300
    records = ["${aws_instance.jenkins_server.public_ip}"]
}

