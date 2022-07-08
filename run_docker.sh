#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Capstone

# Step 1:
# Build image and add a descriptive tag
docker build . --tag capstone

# Step 2: 
# List docker images
docker images capstone

# Step 3: 
# Run tensorflow app
docker run -p 80:5000 capstone
