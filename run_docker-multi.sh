#!/bin/bash

# Check if the user is already logged in to Azure
if az account show > /dev/null 2>&1; then
  echo "Already logged in to Azure."
else
  # Prompt the user for password securely
  read -s -p "Enter your password: " PASSWORD

  # Login to Azure
  if ! sudo az login -u amsterdamumc@medscio.nl -p "$PASSWORD"; then
    echo "Login failed. Please check your credentials."
    exit 1
  fi
fi

# Login to Azure Container Registry
if ! sudo az acr login --name medscio; then
  echo "Failed to log in to Azure Container Registry."
  exit 1
fi

# Start Docker Compose
sudo docker-compose -f docker-compose-multi.yml up --force-recreate
