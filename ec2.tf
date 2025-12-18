resource "aws_instance" "app" {
  ami           = "ami-0f5ee92e2d63afc18"   # Amazon Linux 2 (ap-south-1)
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.app_sg.id
  ]

  associate_public_ip_address = true

  key_name = "devops-key-v3"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl start nginx
              systemctl enable nginx
              EOF

  user_data_replace_on_change = true

  tags = {
    Name = "app-server"
  }
}
