resource "aws_instance" "app" {
  instance_type = "t2.micro"
  ami           = "ami-000b603b003994f09"
}

resource "google_dns_record_set" "a" {
  name         = "demo.google-example.com"
  managed_zone = "example-zone"
  type         = "A"
  ttl          = 300
  rrdatas      = [aws_instance.app.public_ip]
}