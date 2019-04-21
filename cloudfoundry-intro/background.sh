#!/bin/bash

apt update && apt-get install -y git

git clone https://github.com/cloudfoundry-samples/spring-music

curl -q 'https://s3-us-west-1.amazonaws.com/cf-cli-releases/releases/v6.43.0/cf-cli_6.43.0_linux_x86-64.tgz' -o cf.tgz && \
tar zxf cf.tgz && \
mv cf /usr/bin/cf && \
rm LICENSE NOTICE cf.tgz