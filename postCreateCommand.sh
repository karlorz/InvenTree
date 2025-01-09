#!/bin/bash

# Create a symbolic link
cd /home/user/local/InvenTree
ln -s ./ /home/inventree

# Load the .env file
if [ -f "/home/user/local/InvenTree/dev.env" ]; then
    source "/home/user/local/InvenTree/dev.env"
    echo ".env file loaded"
else
    echo ".env file not found"
fi

# Install psycopg2
pip install psycopg2-binary django-redis

# Run initial InvenTree server setup
invoke update -s

# Configure dev environment
invoke dev.setup-dev

# Install required frontend packages
invoke int.frontend-install
