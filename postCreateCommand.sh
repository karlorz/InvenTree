#!/bin/bash

# Create a symbolic link
cd /home/user/local/InvenTree
ln -s ./ /home/inventree

# Source the set_env.sh script to set environment variables
source ./set_env.sh

# Install psycopg2
pip install psycopg2-binary django-redis

# Run initial InvenTree server setup
invoke update -s

# Configure dev environment
invoke dev.setup-dev

# Install required frontend packages
invoke int.frontend-install
