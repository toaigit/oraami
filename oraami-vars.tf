variable "region" {
  default = "us-west-2"
  }

variable "asg_prefix" {
  default = "ASGoraami"
}

variable "lc_prefix" {
  default = "LCoraami"
}

variable "ELBName" {
  default = "ELBoraami"
}

variable "launch_config_name_2" {
  default = "LC_oraami_vpcUAT_2"
}

variable "iamrole" {
  default = "StanfordUpdateDNS"
}

variable "subnet1" {
  default = "subnet-caade283"
}

variable "subnet2" {
  default = "subnet-d47740b3"
}

variable "subnet3" {
  default = "subnet-a78150fc"
}

variable "min_size" {
  default = "1"
}

variable "max_size" {
  default = "1"
}

variable "asg_desired" {
  default = "1"
}

variable "health_check_grace_period" {
  default = "300"
}

variable "wheezy_image_id" {
  description = "Debian Wheezy Debian Community"
  default = "ami-431a4273"
}

variable "jessie_image_id" {
  description = "Debian Jessie Debian Community"
  default = "ami-221ea342"
}

variable "stretch_image_id" {
  description = "Debian Stretch Debian Community"
  default = "ami-cbad0eb3"
}

variable "centos6_image_id" {
  description = "Centos6 Community"
  default = "ami-112cbc71"
}

variable "centos7_image_id" {
  description = "Centos7 Community"
  default = "ami-0c2aba6c"
}

variable "centos7_minsec_image_id" {
  description = "SA Centos7 Minsec"
  default = "ami-5cba0924"
}

variable "centos7_oraami_image_id" {
  description = "OEL74 with u01"
  default = "ami-84c47cfc"
}
variable "instance_type" {
  default = "t2.small"
}

variable "key_name" {
  default = "cia-toai"
}

variable "oraamisg" {
  default = "sg-d58db8ae"
}

variable "dbserversg" {
  default = "sg-0b83b670"
}

variable "websg" {
  default = "sg-768cb90d"
}

variable "elbsg" {
  default = "sg-bf86b3c4"
}

variable "volume_type" {
  default = "gp2"
}

variable "volume_size" {
  default = "32"
}

variable "host_name" {
  default = "oraami"
  }

variable "local_domain_name" {
  default = "stanfordaws.edu"
  }

variable "external_domain_name" {
  default = "stanford.edu"
  }

variable "delete_on_termination" {
  default = "true"
}

variable "SG_elbhttp" {
  default = "sg-73aaad08"
}

variable "http_server_port" {
  default = "80"
}

variable "ssl_cert_arn" {
  default = "arn:aws:acm:us-west-2:387946841317:certificate/2e52e8e2-992c-47de-bc87-1eb6805013e5"
}

variable "nfs_share_volume" {
  default = "fs-8a588b23.efs.us-west-2.amazonaws.com:/"
}

variable "nfs_userdata_dir" {
  default = "/share/awsconfig/centos/oraami"
}
