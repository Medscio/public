#!/bin/bash

# Prompt the user for password securely
read -s -p "Enter your password: " PASSWORD

# Login to Azure
sudo az login -u amsterdamumc@medscio.nl -p "$PASSWORD"

# Login to Azure Container Registry
sudo az acr login --name medscio

# Start Docker Compose
sudo docker-compose -f docker-compose.yml up --force-recreate
