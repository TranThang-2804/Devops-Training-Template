#!/bin/bash

set -a # Enable automatic exporting of variables

LAB_FILE=$1

cd ./main_logic

# Excetute terraform script

terraform init -upgrade
terraform apply  -var="lab_file=$LAB_FILE"