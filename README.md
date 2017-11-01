# azure-mongodb-docker-scaleset
Version 0.1: This example will launch a CentOS 7.3 scaleset with 2 x managed data disks, 2x NAT ports, mongodb inside a docker container with data folder mapped outside the container.
MongoDB data gets mapped to /data_disk/mongodb as indicated when launching docker container -v /data_disk/mongodb/data:/data/db

# Linux Scalset Extension Example
Thanks for working v2 scalset linux extension example in link below.
https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/virtual-machine-scale-sets/virtual-machine-scale-sets-deploy-scaling-app-template.md

# How to use
Once you have launched the scaleset. SSH onto an Instance through NAT port.
To see that mongodb is running, you can run "sudo docker container ls" from bash shell.
You can log into the mongo shell by running "sudo docker exec -it mongo mongo".

# Issues to resolve
Need to reboot instance for all changes to take effect, example disabling transparent_hugepage/defrag.
