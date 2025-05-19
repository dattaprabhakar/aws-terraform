
resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with latest Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  security_groups = [var.app_sg]
  key_name      = var.key_name
  iam_instance_profile = var.iam_profile
}

resource "aws_instance" "mysql_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  security_groups = [var.db_sg]
  key_name      = var.key_name
  iam_instance_profile = var.iam_profile
}
