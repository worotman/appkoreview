resource "aws_security_group" "appko_sg" {
  name          = "sec-${var.tags.["Costcenter"]}-${var.tags.["Company"]}-${var.tags.["Environment"]}"
  description   = "${var.tags.["Company"]} for ${var.tags.["Environment"]} security group"
  vpc_id        = "${var.vpc}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


/* If not in VPN */
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

}
