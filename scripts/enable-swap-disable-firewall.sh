#!/bin/bash

# Pre-requisites
# Install linux vm with attached data disks
# Script based on 4x Data disks

#sleep 120s

Install_step1()
{
# Enable swap file on the linux machine through azure agent file waagent.conf and disable selinux using the ex search replace editor
until [ -f /etc/waagent.conf ]
do
sleep 1
done

# Enable swap file on the linux machine through azure agent file waagent.conf and disable selinux using the ex search replace editor
sed -i:bak 's/ResourceDisk.EnableSwap=n/ResourceDisk.EnableSwap=y/' /etc/waagent.conf
sed -i:bak 's/ResourceDisk.SwapSizeMB=0/ResourceDisk.SwapSizeMB=5120/' /etc/waagent.conf
sed -i:bak 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
setenforce 0

}

Install_step1
