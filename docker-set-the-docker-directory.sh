#!/bin/bash

# Function to create directory
create_directory() {
  mkdir ~/.docker
}

# Try to create the directory
if ! create_directory; then
  # If creation fails, remove the existing directory and try again
  echo "Directory creation failed. Removing existing directory and trying again."
  rm -rf ~/.docker
  echo "Directory removed."
fi

# Check if directory was created successfully
if create_directory; then
  echo "Directory '~/.docker' created successfully."
fi

