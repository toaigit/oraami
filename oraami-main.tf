provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "oraami" {
  ami           = "${var.centos7_minsec_image_id}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  security_groups             = ["${var.dbserversg}"]
  subnet_id                   = "${var.subnet1}"
  associate_public_ip_address = "true"
  root_block_device {
    volume_type           = "${var.volume_type}"
    volume_size           = "${var.volume_size}"
    delete_on_termination = "${var.delete_on_termination}"
  }

  lifecycle {
    create_before_destroy = true
  }

  tags {
    Name = "oraami"
  }
#  user_data="${file("userdata.sh")}"
user_data = <<EOF
#cloud-config
runcmd:
- /bin/timedatectl set-timezone America/Los_Angeles
- echo PS1=\"[\\\\u@${var.host_name}]\" >> /etc/bashrc
- /bin/domainname "${var.local_domain_name}"
- /bin/hostname "${var.host_name}"
- mkdir /share
- mount  -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 "${var.nfs_share_volume}" /share
- chmod 700 "${var.nfs_userdata_dir}/runcmd"
- ${var.nfs_userdata_dir}/runcmd

EOF

}

output "oraami-instanceid" {
  value = "${aws_instance.oraami.id}"
}
output "oraami-public-ip" {
  value = "${aws_instance.oraami.public_ip}"
}
