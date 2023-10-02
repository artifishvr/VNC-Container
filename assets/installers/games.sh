#!/usr/bin/env bash
set -e

apt-get update
apt install supertuxkart -y
apt-get clean -y