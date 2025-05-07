#!/bin/bash
for i in {1..20}; do
  port=$((8200 + i))
  sudo docker run -d -p ${port}:80 --name ubuntu_cont_${i} mi_ubuntu_apache_app
done
