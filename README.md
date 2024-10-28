# Jenkins Multi-Pipeline Repository

## Purpose
This repository contains a Jenkins pipeline to perform:
1. Spellcheck on documentation and code comments
2. Codespell and Shellcheck on project files
3. Pytest-based unit tests
4. Docker container build and push to Docker Hub

## Usage
Trigger the Jenkins pipeline to run all stages in sequence. Each stage is isolated in its respective script.

## Gaps
Additional configurations may be necessary based on Jenkins plugins and Docker credentials.
