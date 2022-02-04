#!/usr/bin/env bash

./gradlew clean gLR
version=$(date +%Y%m%d%H%M)
docker build --no-cache -t skhatri/oss-license-report-demo:${version} .
docker tag skhatri/oss-license-report-demo:${version} skhatri/oss-license-report-demo:latest
docker push skhatri/oss-license-report-demo:${version}
docker push skhatri/oss-license-report-demo:latest



