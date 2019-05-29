provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

# The lookup function does a dynamic lookup in a map for a key. The key is var.region
# You can also do a static lookup of a map directly with ${var.amis["us-east-1"]}
resource "aws_instance" "example" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  instance = aws_instance.example.id
}
