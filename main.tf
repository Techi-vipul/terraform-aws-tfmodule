data "aws_ami" "ubuntu" { // tp get the value
  most_recent = true
  filter {
    name   = "name"
    values = var.ami-name-filter
  }
  owners = var.owner-name # Canonical
}
resource "aws_instance" "ec2" {
  instance_type = var.ec2_size
  ami = try(data.aws_ami.ubuntu.id,var.ami_id)
  tags = var.ec2_name

}
