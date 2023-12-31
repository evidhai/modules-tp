resource "aws_security_group" "sg_ec2_public" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }
  

  tags = {
    Name = "allow_tls"
  }

}