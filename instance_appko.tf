


resource "aws_instance" "appko_instance" {
  ami                     = "${var.ami}"
  instance_type           = "${var.instance_type["appko"]}"
  availability_zone       = "${lookup(var.azs, count.index + 1)}"
  subnet_id               = "${lookup(var.subnets, count.index + 1)}"
  key_name                = "${var.key_name}"
  vpc_security_group_ids  = ["${aws_security_group.appko_sg.id}"]
  count                   = "${var.instance_count["appko"]}"


  tags {
    Name                    = "${var.tags["Environment"]}${var.tags["Costcenter"]}-${var.tags["Company"]}-${count.index + 1}"
    Costcenter              = "${var.tags.["Costcenter"]}"
    Company                 = "${var.tags.["Company"]}"
    Environment             = "${var.tags.["Environment"]}"
    }
}
