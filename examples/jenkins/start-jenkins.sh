#!/bin/sh
## Maintainer: Simon Rydell
## Date created: Jun 18, 2019

# Expose port 8080 of the container to 8080 of the local machine
# Same for port 50000
# Build from dockerhub repository jenkins/jenkins:lts
docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts

# Start jenkins with a volume (Assume there is a directory ./jenkins_home)
# docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
