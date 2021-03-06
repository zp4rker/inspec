FROM ubuntu:focal

# Install curl and vim
RUN apt-get update -y
RUN apt-get install -y curl vim

# Download inspec deb
RUN curl https://omnitruck.chef.io/install.sh | bash -s -- -P inspec

# Cleanup apt
RUN apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Change workdir to home
WORKDIR /root
