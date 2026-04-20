#!/bin/bash

set -e  # stop on error

SERVICES=("configserver" "eurekaserver" "accounts" "loans" "cards" "gatewayserver")

BASE_DIR="/Users/prerna/Desktop/Ranjeet/projects/microservices/section_11"   # change this

for SERVICE in "${SERVICES[@]}"; do
  echo "=============================="
  echo "Building $SERVICE..."
  echo "=============================="

  cd "$BASE_DIR/$SERVICE"

  mvn clean compile jib:dockerBuild

  echo "✅ Built $SERVICE"
  echo
done

echo "🎉 All images built successfully"

#command to run it
#chmod +x build-images.sh
#./build-images.sh
#OR
#bash build-image.sh