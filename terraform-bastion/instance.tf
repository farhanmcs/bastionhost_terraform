resource "aws_instance" "bastion" {
  ami           = var.EC2_AMI
  instance_type = "t2.micro"
  subnet_id = var.PUBLIC_SUBNET
  vpc_security_group_ids = [aws_security_group.bastion-allow-ssh.id]

  key_name = aws_key_pair.mykeypair.key_name
}

resource "aws_instance" "private" {
  ami           = var.EC2_AMI
  instance_type = "t2.micro"
  subnet_id = var.PRIVATE_SUBNET
  vpc_security_group_ids = [aws_security_group.private-ssh.id]
  key_name = aws_key_pair.mykeypair.key_name
}

