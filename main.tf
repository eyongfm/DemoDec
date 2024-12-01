resource "aws_instance" "app" {
  instance_type = "t2.micro"
  ami           = "ami-000b603b003994f09"
  
}
