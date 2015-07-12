#!/bin/bash
echo -e "Building from Ubuntu base"
docker build -t suizman/zookeeper:ubuntu-15-10 build/ubuntu
echo -e "Building from CentOS base"
docker build -t suizman/zookeeper:centos-7 build/centos
echo -e "Building from Arch Linux base"
docker build -t suizman/zookeeper:arch-2015-06-01 build/arch
