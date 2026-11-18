#!/bin/bash
set -e

cd /var/www/myapp

apt-get update -y
apt-get install -y python3 python3-pip python3-venv

python3 -m venv venv
venv/bin/pip install -r requirements.txt

echo "Dependencies installed"