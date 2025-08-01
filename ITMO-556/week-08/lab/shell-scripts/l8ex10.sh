#!/bin/bash


sudo sed -i '/^bind-address/s/^/# /; /bind-address/s/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

