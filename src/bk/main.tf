provider "aws" {}

resource "aws_instance" "hello-world" {
  ami           = "ami-078296f82eb463377"
  instance_type = "t2.micro"

  tags = {
    "Name" = "HelloWorld"
  }

  user_data = <<EOF
#!/bin/bash
amazone-linux-extras install -y nginx1.12
systemctl start nginx
EOF
}
