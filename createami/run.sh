#!/bin/sh
CURDIR=$PWD
cd ..
INSTID=`terraform show | grep oraami-instanceid | awk -F'=' '{print $2}' | sed 's/^ *//g'`

cd $CURDIR
cat <<EOF  > vars.tf
variable "region" {
  default = "us-west-2"
}

variable "instanceid" {
  default = "$INSTID"
}

echo "Creating AMI from instance $INSTID ..."
/bin/rm *.tfstate.*
terraform apply -auto-approve
