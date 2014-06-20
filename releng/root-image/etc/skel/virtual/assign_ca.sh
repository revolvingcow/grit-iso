#!/bin/bash

for uuid in $( VBoxManage list vms | awk 'BEGIN{FS="\" "}{print $2}' )
do
	VBoxManage modifyvm $uuid --vrdeproperty "Security/Method=negotiate"
    VBoxManage modifyvm $uuid --vrdeproperty "Security/CACertificate=/home/bryan/virtual/ca_cert.pem"
	VBoxManage modifyvm $uuid --vrdeproperty "Security/ServerCertificate=/home/bryan/virtual/server_cert.pem"
	VBoxManage modifyvm $uuid --vrdeproperty "Security/ServerPrivateKey=/home/bryan/virtual/server_key_private.pem"
done
