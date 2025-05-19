
resource "aws_instance" "vpn" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_id
  associate_public_ip_address = true
  user_data              = file("${path.module}/../../vpn_user_data.sh")
  vpc_security_group_ids = [var.vpn_sg]
  key_name               = var.key_name
}
