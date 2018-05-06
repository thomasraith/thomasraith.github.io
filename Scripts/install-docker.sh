#!/bin/bash
# DOCKER-CE Setup for Debian (Jessie or newer)

echo "Installing Docker CE (Debian)"
echo "============================="

echo "   Removing old Docker installs"
apt-get -qq remove docker docker-engine docker.io

echo "   Updating apt"
apt-get -qq update

echo "   Installing additional Tools"
apt-get -qq install apt-transport-https ca-certificates curl gnupg2 software-properties-common

echo "   Adding docker PGP key"
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

echo "   Adding docker repository for Debian"
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

echo "   Updating apt"
apt-get -qq update

echo "   Installing docker-ce"
apt-get -qq install docker-ce

echo "   Running docker --version"
docker --version
