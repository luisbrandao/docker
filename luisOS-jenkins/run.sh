#!/bin/bash
docker run --privileged -d --name luisos-jenkins -p 8080:8080 --restart always -v jenkins_data:/var/lib/jenkins luisos-jenkins
