provider "aws" {
  region = "${var.region}"
}

resource "aws_ami_from_instance" "oradb-ami" {
  name               = "OracleDBAMI"
  source_instance_id = "${var.instanceid}"
}

output "oradbami" {
  value = "${aws_ami_from_instance.oradb-ami.id}"
}
