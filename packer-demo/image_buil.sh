#!/bin/bash
cd java
packer build packer_java.json
cd ..
cd mysql
packer build packer_mysql.json
cd ..
cd oracle
packer build packer_oracle.json
cd ..
cd web
packer build packer_web.json
cd ..
