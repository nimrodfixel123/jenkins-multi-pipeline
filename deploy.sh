#!/bin/bash

# Start Jenkins (if using Docker, update as needed)
docker-compose up -d

# Wait for Jenkins to initialize
echo "Waiting for Jenkins to start..."
sleep 60  # Adjust based on startup time

# Jenkins API parameters
JENKINS_URL="http://localhost:8080"
USER="admin"
API_TOKEN="your_api_token_here"

# Trigger the Jenkins job
curl -X POST "$JENKINS_URL/job/jenkins-multi-pipeline/build" \
  --user "$USER:$API_TOKEN"

echo "Jenkins pipeline triggered."
